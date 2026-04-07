# investment-platform

기존 `stock-portfolio-backtest-front`, `stock-portfolio-backtest-api` 코드를 복사해 온 모노레포 작업 폴더입니다. 원본 프로젝트 디렉터리는 그대로 두고, 이 폴더 안에서만 통합 작업을 진행합니다.

## Structure

- `apps/web`: Next.js 프론트엔드
- `apps/api`: Spring Boot 백엔드
- `infra`: 공용 로컬 인프라 설정

## Commands

- `pnpm dev:web`
- `pnpm build:web`
- `pnpm test:web`
- `pnpm dev:api`
- `pnpm build:api`
- `pnpm test:api`
- `pnpm dev:infra`
- `pnpm stop:infra`

## Notes

- 프론트는 `pnpm`, 백엔드는 Gradle로 유지합니다.
- `infra/docker-compose.yml`은 API 프로젝트의 compose 파일을 루트 인프라 경로로 복사한 것입니다.
- 생성물과 내부 Git 디렉터리는 원본에서 제외하고 복사했습니다.
