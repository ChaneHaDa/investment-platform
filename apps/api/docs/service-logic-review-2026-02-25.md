# 서비스 로직 개선 점검 리포트

- 작성일: 2026-02-25
- 범위: `service`, `controller`, `repository`, `validation`, `exception`
- 기준: 동작 정확성, 보안, 예외 일관성, 입력 검증

## 주요 이슈 (우선순위 순)

### 1) [높음] 포트폴리오 수정 API 소유권 검증 누락 (IDOR 위험)
- 위치: `src/main/java/com/chan/stock_portfolio_backtest_api/portfolio/service/PortfolioService.java:119`
- 내용: `updatePortfolio()`에서 현재 로그인 사용자와 포트폴리오 소유자 비교를 수행하지 않음.
- 영향: 타 사용자 `portfolioId`를 알면 수정 가능.
- 개선안:
  - `authService.getCurrentUser()` 호출 후 `securityService.validatePortfolioOwnership(portfolio, user)` 적용.

### 2) [높음] 인덱스 백테스트 시작 구간 수익률 계산 왜곡 가능
- 위치:
  - `src/main/java/com/chan/stock_portfolio_backtest_api/index/service/IndexBacktestService.java:47`
  - `src/main/java/com/chan/stock_portfolio_backtest_api/index/repository/IndexPriceRepository.java:17`
- 내용: 조회 범위가 `startDate~endDate`만 포함되어 첫 거래일 수익률 계산에 필요한 직전 종가가 누락될 수 있음.
- 영향: 월별/전체 수익률이 체계적으로 과소/과대 계산될 수 있음.
- 개선안:
  - 조회 시작일을 `startDate.minusDays(n)`로 확장 후, 집계 시 요청 구간으로 필터링.

### 3) [높음] 종목 가격 데이터 부족 시 0% 수익률로 조용히 처리
- 위치: `src/main/java/com/chan/stock_portfolio_backtest_api/portfolio/service/PortfolioBacktestService.java:162`
- 내용: 개별 종목 가격 데이터가 비어도 계산이 계속 진행되어 결과가 0%로 표현될 수 있음.
- 영향: "데이터 없음"과 "실제 0% 수익률"이 구분되지 않아 결과 신뢰도 저하.
- 개선안:
  - 종목별 최소 데이터 건수(예: 2건) 검증.
  - 미충족 시 명시적 예외(400/404) 반환.

### 4) [중간] 중복 stockId 요청 시 정상 데이터도 미존재로 오판
- 위치:
  - `src/main/java/com/chan/stock_portfolio_backtest_api/portfolio/service/PortfolioService.java:66`
  - `src/main/java/com/chan/stock_portfolio_backtest_api/portfolio/service/PortfolioService.java:143`
  - `src/main/java/com/chan/stock_portfolio_backtest_api/portfolio/service/PortfolioBacktestService.java:65`
- 내용: `findAllById()` 결과 건수와 요청 건수를 직접 비교해 중복 ID가 있으면 오류 처리됨.
- 영향: 같은 종목을 두 번 요청한 정상 케이스가 `Some stocks not found`로 실패.
- 개선안:
  - 조회 전 `stockId`를 `distinct` 처리하거나, 중복 자체를 검증 단계에서 금지.

### 5) [중간] PortfolioRequestDTO 입력 검증 부재
- 위치:
  - `src/main/java/com/chan/stock_portfolio_backtest_api/portfolio/controller/PortfolioController.java:40`
  - `src/main/java/com/chan/stock_portfolio_backtest_api/portfolio/dto/PortfolioRequestDTO.java:16`
- 내용: 컨트롤러는 `@Valid`를 사용하지만 DTO 필드에 제약 어노테이션이 거의 없음.
- 영향: 잘못된 값이 DB 계층까지 전달되어 500 오류 유발 가능.
- 개선안:
  - DTO에 `@NotBlank`, `@NotNull`, `@Positive`, `@Valid`(중첩 리스트) 추가.
  - 필요 시 `DataIntegrityViolationException` 매핑 추가.

### 6) [중간] 백테스트 item의 weight가 primitive라 `@NotNull` 무효
- 위치: `src/main/java/com/chan/stock_portfolio_backtest_api/portfolio/dto/PortfolioBacktestRequestItemDTO.java:31`
- 내용: `float weight`는 null이 될 수 없어 `@NotNull`이 동작하지 않음.
- 영향: 필드 누락 시 기본값 0으로 해석되어 의도치 않은 검증 통과/실패 발생.
- 개선안:
  - `float` → `Float` 변경 후 `@NotNull` 유지.

### 7) [중간] Validation 에러 처리 시 강제 캐스팅 위험
- 위치: `src/main/java/com/chan/stock_portfolio_backtest_api/common/exception/GlobalExceptionHandler.java:35`
- 내용: 모든 validation error를 `FieldError`로 캐스팅.
- 영향: object-level error 발생 시 `ClassCastException` 가능.
- 개선안:
  - `instanceof FieldError` 분기 처리 후 object error는 별도 키(`global`)로 저장.

## 권장 우선 작업
1. `PortfolioService.updatePortfolio` 소유권 검증 추가.
2. `IndexBacktestService` 조회 구간 보정(직전 종가 포함) 및 필터링.
3. `PortfolioBacktestService` 종목별 최소 데이터 검증 및 명시적 예외 처리.

