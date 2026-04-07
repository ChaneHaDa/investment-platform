package com.chan.stock_portfolio_backtest_api.portfolio.dto;

import com.chan.stock_portfolio_backtest_api.portfolio.domain.PortfolioItem;
import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PortfolioItemRequestDTO {
    private Integer stockId;
    private Float weight;

    public static PortfolioItemRequestDTO entityToDTO(PortfolioItem portfolioItem) {
        return PortfolioItemRequestDTO.builder()
                .stockId(portfolioItem.getStock().getId())
                .weight(portfolioItem.getWeight())
                .build();
    }

    public static PortfolioItem DTOToEntity(PortfolioItemRequestDTO portfolioItemRequestDTO, Stock stock) {
        return PortfolioItem.builder()
                .stock(stock)
                .weight(portfolioItemRequestDTO.getWeight())
                .build();
    }

}
