package com.chan.stock_portfolio_backtest_api.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PortfolioBacktestRequestItemDTO {
    // 기존 종목용 (stockId가 있으면 기존 로직 사용)
    private Integer stockId;

    private String stockName;

    // 사용자 정의 종목용 (stockId가 null이면 사용자 정의 종목으로 처리)
    private String customStockName;
    
    @Min(value = -100, message = "Annual return rate must be at least -100%")
    @Max(value = 1000, message = "Annual return rate must be at most 1000%")
    private Float annualReturnRate; // 연평균 수익률 (백분율, 예: 10.5 = 10.5%)

    @Min(value = 0, message = "Weight must be at least 0")
    @Max(value = 1, message = "Weight must be at most 1")
    @NotNull(message = "weight must not be null")
    private float weight;
    
    /**
     * 사용자 정의 종목인지 확인
     */
    @JsonIgnore
    public boolean isCustomStock() {
        return stockId == null && customStockName != null && annualReturnRate != null;
    }
    
    /**
     * 유효성 검증 - stockId 또는 (customStockName + annualReturnRate) 중 하나는 반드시 있어야 함
     */
    @JsonIgnore
    public boolean isValid() {
        return (stockId != null) || (customStockName != null && annualReturnRate != null);
    }
}
