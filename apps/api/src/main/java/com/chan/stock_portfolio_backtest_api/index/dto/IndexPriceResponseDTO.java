package com.chan.stock_portfolio_backtest_api.index.dto;

import com.chan.stock_portfolio_backtest_api.index.domain.IndexPrice;
import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class IndexPriceResponseDTO {
    private Integer id;
    private Float closePrice;
    private Float openPrice;
    private Float lowPrice;
    private Float highPrice;
    private Float yearlyDiff;
    private LocalDate baseDate;

    public static IndexPriceResponseDTO entityToDTO(IndexPrice indexPrice) {
        return IndexPriceResponseDTO.builder()
                .id(indexPrice.getId())
                .closePrice(indexPrice.getClosePrice())
                .openPrice(indexPrice.getOpenPrice())
                .lowPrice(indexPrice.getLowPrice())
                .highPrice(indexPrice.getHighPrice())
                .yearlyDiff(indexPrice.getYearlyDiff())
                .baseDate(indexPrice.getBaseDate())
                .build();
    }

}
