package com.chan.stock_portfolio_backtest_api.index.controller;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;
import com.chan.stock_portfolio_backtest_api.index.service.IndexPriceService;
import com.chan.stock_portfolio_backtest_api.common.util.ResponseUtil;

import jakarta.validation.constraints.NotNull;

@RestController
@RequestMapping("api/v1/indexs/{index_id}/prices")
public class IndexPriceController {
	private final IndexPriceService indexPriceService;

	public IndexPriceController(IndexPriceService indexPriceService) {
		this.indexPriceService = indexPriceService;
	}

	@GetMapping
	public ResponseEntity<ResponseDTO<?>> getIndexPriceByIndexId(
		@PathVariable(name = "index_id")
		@NotNull(message = "index_id는 필수입니다.") Integer indexId,
		@RequestParam(value = "startDate", required = false)
		@DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startDate,
		@RequestParam(value = "endDate", required = false)
		@DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endDate,
		@RequestParam(value = "page", defaultValue = "0") Integer page,
		@RequestParam(value = "size", defaultValue = "100") Integer size,
		@RequestParam(value = "sort", defaultValue = "baseDate") String sort,
		@RequestParam(value = "direction", defaultValue = "DESC") String direction
	) {
		// 페이지 번호 및 사이즈 검증
		if (page < 0) {
			throw new IllegalArgumentException("Page number must not be negative.");
		}
		if (size <= 0 || size > 1000) {
			throw new IllegalArgumentException("Page size must be between 1 and 1000.");
		}

		if (startDate != null && endDate != null) {
			return ResponseEntity.ok(ResponseUtil.success(
				indexPriceService.findIndexPricesByIndexInfoIdAndDateRangeWithPaging(
					indexId, startDate, endDate, page, size, sort, direction)));
		} else {
			return ResponseEntity.ok(ResponseUtil.success(
				indexPriceService.findIndexPricesByIndexInfoIdWithPaging(
					indexId, page, size, sort, direction)));
		}
	}
}
