package com.chan.stock_portfolio_backtest_api.index.dto;

import lombok.*;

import java.time.LocalDate;
import java.util.Map;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class IndexBacktestResponseDTO {
    private Float totalRor;
    private Float volatility;
    private Map<LocalDate, Float> monthlyRor;
}
