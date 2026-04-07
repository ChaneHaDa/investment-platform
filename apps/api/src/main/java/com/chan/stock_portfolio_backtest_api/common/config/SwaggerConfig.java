package com.chan.stock_portfolio_backtest_api.common.config;

import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.media.Content;
import io.swagger.v3.oas.models.media.MediaType;
import io.swagger.v3.oas.models.media.Schema;
import io.swagger.v3.oas.models.responses.ApiResponse;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfig {
    @Bean
    public OpenAPI openAPI() {
        return new OpenAPI()
                .components(new Components()
                        .addSecuritySchemes("bearer-jwt", new SecurityScheme()
                                .name("bearer-jwt")
                                .type(SecurityScheme.Type.HTTP)
                                .scheme("bearer")
                                .bearerFormat("JWT")
                                .in(SecurityScheme.In.HEADER)
                                .description("JWT Authorization header using the Bearer scheme."))
                        .addSchemas("ErrorResponse", new Schema<>()
                                .type("object")
                                .addProperty("status", new Schema<>().type("string").example("error"))
                                .addProperty("code", new Schema<>().type("string").example("ERROR_CODE"))
                                .addProperty("message", new Schema<>().type("string").example("에러 메시지"))
                                .addProperty("data", new Schema<>().type("object").nullable(true)))
                        .addSchemas("SuccessResponse", new Schema<>()
                                .type("object")
                                .addProperty("status", new Schema<>().type("string").example("success"))
                                .addProperty("message", new Schema<>().type("string").nullable(true))
                                .addProperty("data", new Schema<>().type("object")))
                        .addResponses("BadRequest", new ApiResponse()
                                .description("잘못된 요청")
                                .content(new Content()
                                        .addMediaType("application/json", new MediaType()
                                                .schema(new Schema<>().$ref("#/components/schemas/ErrorResponse")))))
                        .addResponses("Unauthorized", new ApiResponse()
                                .description("인증 실패")
                                .content(new Content()
                                        .addMediaType("application/json", new MediaType()
                                                .schema(new Schema<>().$ref("#/components/schemas/ErrorResponse")))))
                        .addResponses("Forbidden", new ApiResponse()
                                .description("권한 없음")
                                .content(new Content()
                                        .addMediaType("application/json", new MediaType()
                                                .schema(new Schema<>().$ref("#/components/schemas/ErrorResponse")))))
                        .addResponses("NotFound", new ApiResponse()
                                .description("리소스를 찾을 수 없음")
                                .content(new Content()
                                        .addMediaType("application/json", new MediaType()
                                                .schema(new Schema<>().$ref("#/components/schemas/ErrorResponse"))))))
                .info(apiInfo())
                .addSecurityItem(new SecurityRequirement().addList("bearer-jwt"));
    }

    private Info apiInfo() {
        return new Info()
                .title("Portfolio Backtest API")
                .description("Create a portfolio and backtest it")
                .version("1.0.0");
    }
}