# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Spring Boot REST API for stock portfolio backtesting written in Java 17. It allows users to create portfolios and simulate their performance using historical stock data. The application uses JWT authentication, JPA for data persistence, and provides comprehensive backtesting functionality with various financial calculations.

## Build and Development Commands

- **Build the project**: `./gradlew build`
- **Run the application**: `./gradlew bootRun` or `java -jar build/libs/stock-portfolio-backtest-api-*.jar`
- **Run tests**: `./gradlew test`
- **Clean build**: `./gradlew clean build`
- **Generate API documentation**: Built-in Swagger UI available at `/swagger-ui/index.html` when running
- **Run Flyway migrations**: Automatically executed on startup when `spring.flyway.enabled=true`
- **Validate migrations**: `./gradlew flywayValidate`
- **Show migration info**: `./gradlew flywayInfo`

## Architecture and Key Components

### Layer Architecture
- **Controller Layer**: REST endpoints in `controller/` package
- **Service Layer**: Business logic in `service/` package  
- **Repository Layer**: JPA repositories in `repository/` package
- **Domain Layer**: JPA entities in `domain/` package
- **DTO Layer**: Request/response objects in `dto/request/` and `dto/response/`

### Core Business Logic
- **Portfolio Management**: `PortfolioService` handles CRUD operations for portfolios and portfolio items
- **Backtesting Engine**: `PortfolioBacktestService` calculates portfolio performance metrics using historical data
- **Index Backtesting**: `IndexBacktestService` provides market index comparison functionality
- **Data Interpolation**: `DataInterpolationStrategy` with `LinearInterpolationStrategy` implementation for missing data points
- **Portfolio Calculations**: `PortfolioCalculator` utility for financial calculations

### Security
- JWT-based authentication with `JWTTokenValidatorFilter` and `CustomUserDetailsService`
- Email verification system using Redis (`RedisEmailVerificationService`)
- Spring Security configuration in `SecurityConfig`

### Data Management
- Supports both H2 (dev) and PostgreSQL (prod) databases
- Redis integration for email verification and caching
- Environment-specific configurations in `application-dev.properties` and `application-prod.properties`
- **Database Migration**: Flyway for version-controlled database schema management
  - Migration scripts in `src/main/resources/db/migration/`
  - Naming convention: `V{version}__{description}.sql` (e.g., `V1__Create_initial_schema.sql`)
  - Enabled in production by default, disabled in development (using JPA DDL auto-update)

## Configuration

### Environment Variables Required
- Database: `DEV_DATASOURCE_URL`, `PROD_DATASOURCE_URL`, etc.
- Email: `MAIL_HOST`, `MAIL_USERNAME`, `MAIL_PASSWORD`  
- Redis: `REDIS_HOST`, `REDIS_PORT`, `REDIS_PASSWORD`
- Profile: `SPRING_PROFILES_ACTIVE` (dev/prod)

### Key Configuration Classes
- `SecurityConfig`: JWT and CORS configuration
- `SwaggerConfig`: API documentation setup
- `RedisConfig`: Redis connection and serialization
- `AsyncConfig`: Async processing configuration

## Database Schema

Main entities and relationships:
- `Users` → `Portfolio` (one-to-many)
- `Portfolio` → `PortfolioItem` (one-to-many)
- `Stock` ← `PortfolioItem` (many-to-one)
- `Stock` → `StockPrice` (one-to-many)
- `IndexInfo` → `IndexPrice` (one-to-many)

## Testing Notes

- Tests should use the `@SpringBootTest` annotation for integration tests
- Use `@WebMvcTest` for controller layer testing
- Mock external dependencies using `@MockBean`
- Test data can be initialized via `data.sql` in resources

## Development Guidelines

- Follow existing package structure and naming conventions
- Use Lombok annotations (`@Data`, `@Entity`, etc.) consistently
- Implement proper exception handling using custom exceptions in `exception/` package
- Use validation annotations and custom validators in `valid/` package
- Follow the existing DTO pattern for request/response objects