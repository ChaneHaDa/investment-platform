# Repository Guidelines

## Project Structure & Module Organization
- Source: `src/main/java/com/chan/stock_portfolio_backtest_api` (packages: `controller`, `service`, `repository`, `domain`, `dto`, `config`, `strategy`, `util`, `valid`, `exception`).
- Config: `src/main/resources` (`application.properties`, `application-*.properties`, `logback-spring.xml`, `data.sql`).
- Tests: `src/test/java` (create if missing). Keep package mirrors of `main`.
- Entry point: `StockPortfolioBacktestApiApplication.java`.

## Build, Test, and Development Commands
- `./gradlew bootRun`: Run the API locally (honors `SPRING_PROFILES_ACTIVE`).
- `./gradlew test`: Run unit/slice tests (JUnit 5; Spring Boot Test).
- `./gradlew build`: Compile and package a fat JAR under `build/libs/`.
- `java -jar build/libs/stock-portfolio-backtest-api-*.jar`: Run packaged app.
- `docker-compose up -d`: Start local MySQL (3306) and Redis (6379) for dev.
- Swagger UI: http://localhost:8080/swagger-ui/index.html

## Coding Style & Naming Conventions
- Java 17, 4-space indentation, UTF-8.
- Packages: lowercase; classes: PascalCase; methods/fields: camelCase; constants: UPPER_SNAKE_CASE.
- DTOs: suffix with `RequestDTO`/`ResponseDTO` (see `dto/...`).
- Controllers expose REST endpoints; services contain business logic; repositories extend Spring Data JPA.
- Use Lombok (`@Getter`, `@Builder`, etc.) where present; avoid adding boilerplate already covered by Lombok.

## Testing Guidelines
- Frameworks: JUnit 5, Spring Boot Test. Place tests under `src/test/java/...` mirroring packages.
- Naming: `ClassNameTest.java`; method names describe behavior (e.g., `createPortfolio_returns201`).
- Run: `./gradlew test`. No strict coverage threshold enforced; add tests for new logic, branches, and error paths.

## Commit & Pull Request Guidelines
- Commit style follows Conventional Commits (e.g., `feat:`, `fix:`, `docs:`, `chore:`). Keep subjects imperative and concise.
- Branches: use `feature/<short-name>` or `fix/<short-name>`; merge via PR into `develop`.
- PRs must include: clear description, linked issues (`Closes #123`), screenshots or curl examples for API changes, and migration notes if schema/data changes.

## Security & Configuration Tips
- Profiles: set `SPRING_PROFILES_ACTIVE=dev|prod` or run with `--spring.profiles.active=dev`.
- Secrets: never commit credentials. Prefer env vars over properties for secrets.
- Local services: ensure MySQL/Redis from `docker-compose.yml` are running before starting the app.
