# investment-platform

새 모노레포 스캐폴드입니다. 기존 `stock-portfolio-backtest-front`, `stock-portfolio-backtest-api` 프로젝트는 그대로 두고, 이 폴더 안에서 별도로 정리할 수 있게 만들었습니다.

## Structure

- `apps/web`
- `apps/api`
- `infra`

## Notes

- 프론트엔드는 `apps/web`로 옮기면 루트 `pnpm` 스크립트를 그대로 사용할 수 있습니다.
- 백엔드는 Gradle 프로젝트 전체를 `apps/api`로 옮기면 루트 스크립트가 동작합니다.
- 지금 단계에서는 빈 골격만 만든 상태입니다.
