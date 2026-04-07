# 모니터링 가이드

이 문서는 Stock Portfolio Backtest API의 모니터링 시스템에 대한 가이드입니다.

## 개요

애플리케이션은 Spring Boot Actuator와 Micrometer를 사용하여 성능 지표와 상태 정보를 제공합니다. 모니터링 엔드포인트는 메인 애플리케이션 포트(8080)와 분리된 별도 포트(8082)에서
실행됩니다.

## 접속 정보

- **모니터링 포트**: 8082
- **Base URL**: `http://localhost:8082/actuator`

## 사용 가능한 엔드포인트

### 1. 상태 확인

```
GET /actuator/health
```

- 애플리케이션 전반적인 상태 확인
- 데이터베이스, Redis 등 의존성 상태 포함
- 상세 정보 표시 활성화됨

### 2. 애플리케이션 정보

```
GET /actuator/info
```

- 애플리케이션 버전 및 빌드 정보
- 환경 정보

### 3. 메트릭스 목록

```
GET /actuator/metrics
```

- 사용 가능한 모든 메트릭스 이름 목록 조회

### 4. 특정 메트릭스 조회

```
GET /actuator/metrics/{metric-name}
```

특정 지표의 상세 정보 조회

**예시:**

```bash
# 포트폴리오 생성 수
curl http://localhost:8082/actuator/metrics/portfolio.created.total

# API 호출 수 (태그별)
curl http://localhost:8082/actuator/metrics/api.calls.total

# 백테스트 실행 시간
curl http://localhost:8082/actuator/metrics/backtest.duration
```

### 5. Prometheus 메트릭스

```
GET /actuator/prometheus
```

- Prometheus 모니터링 시스템용 메트릭스 export
- 모든 지표가 Prometheus 형식으로 제공됨

### 6. HTTP 추적

```
GET /actuator/httptrace
```

- 최근 HTTP 요청/응답 추적 정보

## 커스텀 메트릭스

### API 성능 지표

- `api.calls.total` - 총 API 호출 수
    - 태그: `class`, `method`
- `api.calls.success` - 성공한 API 호출 수
- `api.calls.error` - 실패한 API 호출 수
    - 태그: `exception` (예외 타입)
- `api.response.time` - API 응답 시간

### 비즈니스 지표

- `portfolio.created.total` - 생성된 포트폴리오 총 수
- `backtest.executed.total` - 실행된 백테스트 수
    - 태그: `status` (성공/실패 상태)
- `backtest.duration` - 백테스트 실행 소요 시간
- `backtest.active.count` - 현재 활성 백테스트 수
- `stock.data.loaded.total` - 로드된 주식 데이터 포인트 수

### 데이터베이스 지표

- `database.query.duration` - 데이터베이스 쿼리 실행 시간
    - 태그: `type` (쿼리 유형)

## 모니터링 시스템 구성

### MetricsService

비즈니스 로직에서 직접 호출하여 커스텀 지표를 기록하는 서비스

### MetricsAspect

AOP를 사용하여 모든 REST Controller의 메서드 실행을 자동으로 모니터링

### MetricsConfig

Micrometer와 Spring Boot Actuator 설정

## 사용 예시

### 1. 전체 시스템 상태 확인

```bash
curl http://localhost:8082/actuator/health
```

### 2. 현재 활성 백테스트 수 확인

```bash
curl http://localhost:8082/actuator/metrics/backtest.active.count
```

### 3. API 호출 통계 확인

```bash
curl http://localhost:8082/actuator/metrics/api.calls.total
```

### 4. Prometheus용 모든 메트릭스 조회

```bash
curl http://localhost:8082/actuator/prometheus
```

## 프로덕션 고려사항

- 프로덕션 환경에서는 보안을 위해 모니터링 엔드포인트 접근을 제한해야 합니다
- 현재 설정에서는 보안 인증 없이 접근 가능하므로 프로덕션 배포 시 주의 필요
- Prometheus나 Grafana 등의 모니터링 도구와 연동하여 대시보드 구성 권장