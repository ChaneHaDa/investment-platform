package com.chan.stock_portfolio_backtest_api.stock.dto;

import com.chan.stock_portfolio_backtest_api.stock.domain.StockPrice;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StockPriceRequestDTO {
    private Integer id;
    private Float closePrice;
    private Float openPrice;
    private Float lowPrice;
    private Float highPrice;
    private Long tradeQuantity;
    private Long tradeAmount;
    private Long issuedCount;
    private LocalDate baseDate;

    public static StockPriceRequestDTO entityToDTO(StockPrice stockPrice) {
        return StockPriceRequestDTO.builder()
                .id(stockPrice.getId())
                .closePrice(stockPrice.getClosePrice())
                .openPrice(stockPrice.getOpenPrice())
                .lowPrice(stockPrice.getLowPrice())
                .highPrice(stockPrice.getHighPrice())
                .tradeQuantity(stockPrice.getTradeQuantity())
                .tradeAmount(stockPrice.getTradeAmount())
                .issuedCount(stockPrice.getIssuedCount())
                .baseDate(stockPrice.getBaseDate())
                .build();
    }
}
