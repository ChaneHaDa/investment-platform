package com.chan.stock_portfolio_backtest_api.portfolio.dto;

import lombok.*;

import java.time.LocalDate;
import java.util.Map;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PortfolioBacktestResponseItemDTO {
    private String name;
    private Float totalRor;
    private Map<LocalDate, Float> monthlyRor;
}
