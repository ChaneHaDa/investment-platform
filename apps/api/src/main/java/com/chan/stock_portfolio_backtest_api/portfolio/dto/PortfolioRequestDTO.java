package com.chan.stock_portfolio_backtest_api.portfolio.dto;

import com.chan.stock_portfolio_backtest_api.portfolio.domain.Portfolio;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.List;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PortfolioRequestDTO {
    private String name;
    private String description;
    private Long amount;
    private LocalDate startDate;
    private LocalDate endDate;
    private Float ror;
    private Float volatility;
    private Float price;
    private List<PortfolioItemRequestDTO> portfolioItemRequestDTOList;

    public static PortfolioRequestDTO entityToDTO(Portfolio portfolio) {
        return PortfolioRequestDTO.builder()
                .name(portfolio.getName())
                .description(portfolio.getDescription())
                .amount(portfolio.getAmount())
                .startDate(portfolio.getStartDate())
                .endDate(portfolio.getEndDate())
                .ror(portfolio.getRor())
                .volatility(portfolio.getVolatility())
                .price(portfolio.getPrice())
                .portfolioItemRequestDTOList(portfolio.getPortfolioItemList().stream()
                        .map(PortfolioItemRequestDTO::entityToDTO)
                        .toList())
                .build();
    }
}
