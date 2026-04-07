package com.chan.stock_portfolio_backtest_api.stock.controller;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;
import com.chan.stock_portfolio_backtest_api.stock.service.StockPriceService;
import com.chan.stock_portfolio_backtest_api.common.util.ResponseUtil;

@RestController
@RequestMapping("api/v1/stocks/{stock_id}/prices")
public class StockPriceController {
	private final StockPriceService stockPriceService;

	public StockPriceController(StockPriceService stockPriceService) {
		this.stockPriceService = stockPriceService;
	}

	@GetMapping
	public ResponseEntity<ResponseDTO<?>> getStockByName(
		@PathVariable("stock_id") Integer stockId,
		@RequestParam(value = "startDate", required = false)
		@DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startDate,
		@RequestParam(value = "endDate", required = false)
		@DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endDate,
		@RequestParam(value = "page", defaultValue = "0") Integer page,
		@RequestParam(value = "size", defaultValue = "100") Integer size,
		@RequestParam(value = "sort", defaultValue = "baseDate") String sort,
		@RequestParam(value = "direction", defaultValue = "DESC") String direction) {

		// 페이지 번호 및 사이즈 검증
		if (page < 0) {
			throw new IllegalArgumentException("Page number must not be negative.");
		}
		if (size <= 0 || size > 1000) {
			throw new IllegalArgumentException("Page size must be between 1 and 1000.");
		}

		if (startDate != null && endDate != null) {
			return ResponseEntity.ok(ResponseUtil.success(
				stockPriceService.findStockPricesByStockIdAndDateRangeWithPaging(
					stockId, startDate, endDate, page, size, sort, direction)));
		} else {
			return ResponseEntity.ok(ResponseUtil.success(
				stockPriceService.findStockPricesByStockIdWithPaging(
					stockId, page, size, sort, direction)));
		}
	}

}
