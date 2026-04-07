package com.chan.stock_portfolio_backtest_api.portfolio.dto;

import com.chan.stock_portfolio_backtest_api.portfolio.domain.Portfolio;
import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PortfolioResponseDTO {
    private Integer id;
    private String name;
    private String description;
    private Long amount;
    private LocalDate startDate;
    private LocalDate endDate;
    private Float ror;
    private Float volatility;
    private Float price;

    public static PortfolioResponseDTO entityToDTO(Portfolio portfolio) {
        return PortfolioResponseDTO.builder()
                .id(portfolio.getId())
                .name(portfolio.getName())
                .description(portfolio.getDescription())
                .amount(portfolio.getAmount())
                .startDate(portfolio.getStartDate())
                .endDate(portfolio.getEndDate())
                .ror(portfolio.getRor())
                .volatility(portfolio.getVolatility())
                .price(portfolio.getPrice())
                .build();
    }

}