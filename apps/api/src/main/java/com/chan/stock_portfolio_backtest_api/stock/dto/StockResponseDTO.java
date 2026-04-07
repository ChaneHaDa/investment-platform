package com.chan.stock_portfolio_backtest_api.stock.dto;

import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StockResponseDTO {
    private Integer id;
    private String name;
    private String shortCode;
    private String isinCode;
    private String marketCategory;

    public static StockResponseDTO entityToDTO(Stock stock) {
        return StockResponseDTO.builder()
                .id(stock.getId())
                .name(stock.getName())
                .shortCode(stock.getShortCode())
                .isinCode(stock.getIsinCode())
                .marketCategory(stock.getMarketCategory())
                .build();
    }
}
