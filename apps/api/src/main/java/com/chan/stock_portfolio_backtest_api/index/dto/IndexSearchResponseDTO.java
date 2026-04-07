package com.chan.stock_portfolio_backtest_api.index.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class IndexSearchResponseDTO {
	private Integer indexId;
	private String name;
	private String category;
}
