package com.chan.stock_portfolio_backtest_api.portfolio.dto;

import com.chan.stock_portfolio_backtest_api.portfolio.domain.Portfolio;
import lombok.*;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PortfolioDetailResponseDTO {
    private Integer id;
    private String name;
    private String description;
    private Long amount;
    private LocalDate startDate;
    private LocalDate endDate;
    private Float ror;
    private Float volatility;
    private Float price;
    private List<PortfolioDetailItemResponseDTO> items;

    public static PortfolioDetailResponseDTO entityToDTO(Portfolio portfolio) {
        return PortfolioDetailResponseDTO.builder()
                .id(portfolio.getId())
                .name(portfolio.getName())
                .description(portfolio.getDescription())
                .amount(portfolio.getAmount())
                .startDate(portfolio.getStartDate())
                .endDate(portfolio.getEndDate())
                .ror(portfolio.getRor())
                .volatility(portfolio.getVolatility())
                .price(portfolio.getPrice())
                .items(portfolio.getPortfolioItemList().stream()
                        .map(PortfolioDetailItemResponseDTO::entityToDTO)
                        .toList())
                .build();
    }
}
