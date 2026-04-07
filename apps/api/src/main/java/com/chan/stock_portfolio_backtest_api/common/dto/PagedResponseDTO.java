package com.chan.stock_portfolio_backtest_api.common.dto;

import java.util.List;

import org.springframework.data.domain.Page;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PagedResponseDTO<T> {
	private List<T> content;
	private long totalElements;
	private int totalPages;
	private int size;
	private int number;
	private boolean first;
	private boolean last;

	public static <T> PagedResponseDTO<T> of(Page<T> page) {
		return PagedResponseDTO.<T>builder()
			.content(page.getContent())
			.totalElements(page.getTotalElements())
			.totalPages(page.getTotalPages())
			.size(page.getSize())
			.number(page.getNumber())
			.first(page.isFirst())
			.last(page.isLast())
			.build();
	}
}