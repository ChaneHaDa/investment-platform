package com.chan.stock_portfolio_backtest_api.portfolio.dto;

import com.chan.stock_portfolio_backtest_api.portfolio.domain.PortfolioItem;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PortfolioDetailItemResponseDTO {
    private Integer id;
    private Integer stockId;
    private String name;
    private Float weight;

    public static PortfolioDetailItemResponseDTO entityToDTO(PortfolioItem portfolioItem) {
        return PortfolioDetailItemResponseDTO.builder()
                .id(portfolioItem.getId())
                .stockId(portfolioItem.getStock().getId())
                .name(portfolioItem.getStock().getName())
                .weight(portfolioItem.getWeight())
                .build();
    }
}