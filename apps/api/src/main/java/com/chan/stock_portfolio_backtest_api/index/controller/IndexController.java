package com.chan.stock_portfolio_backtest_api.index.controller;

import java.util.List;
import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chan.stock_portfolio_backtest_api.index.dto.IndexBacktestRequestDTO;
import com.chan.stock_portfolio_backtest_api.index.dto.IndexBacktestResponseDTO;
import com.chan.stock_portfolio_backtest_api.index.dto.IndexInfoResponseDTO;
import com.chan.stock_portfolio_backtest_api.index.dto.IndexSearchResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.index.service.IndexBacktestService;
import com.chan.stock_portfolio_backtest_api.index.service.IndexInfoService;
import com.chan.stock_portfolio_backtest_api.common.util.ResponseUtil;

import jakarta.validation.constraints.NotNull;

@RestController
@RequestMapping("api/v1/indexs")
@Validated
public class IndexController {
	private final IndexInfoService indexInfoService;
	private final IndexBacktestService indexBacktestService;

	public IndexController(IndexInfoService indexInfoService, IndexBacktestService indexBacktestService) {
		this.indexInfoService = indexInfoService;
		this.indexBacktestService = indexBacktestService;
	}

	@GetMapping
	public ResponseEntity<ResponseDTO<?>> getIndexesByParams(
		@RequestParam(value = "name", required = false) String name,
		@RequestParam(value = "category", required = false) String category,
		@RequestParam(value = "q", required = false) String q
	) {
		if (name == null && category == null && q == null) {
			throw new EntityNotFoundException("Index를 찾을 수 없습니다.");
		}

		if (q != null) {
			List<IndexSearchResponseDTO> indexSearchResponseDTOList = indexInfoService.findIndexesByQuery(q.trim());
			return ResponseEntity.ok(ResponseUtil.success(indexSearchResponseDTOList));
		} else {
			List<IndexInfoResponseDTO> indexInfoResponseDTOList = indexInfoService.findIndexesByParams(name, category);
			return ResponseEntity.ok(ResponseUtil.success(indexInfoResponseDTOList));
		}
	}

	@GetMapping("/{id}")
	public ResponseEntity<ResponseDTO<IndexInfoResponseDTO>> getIndex(
		@PathVariable("id")
		@NotNull(message = "id는 필수 입력값입니다.") Integer id
	) {
		IndexInfoResponseDTO indexInfoResponseDTO = indexInfoService.findIndexInfoById(id);
		return ResponseEntity.ok(ResponseUtil.success(indexInfoResponseDTO));
	}

	@GetMapping("/{id}/portfolios")
	public ResponseEntity<ResponseDTO<IndexBacktestResponseDTO>> getIndexPortfolio(
		@PathVariable("id")
		@NotNull(message = "id는 필수 입력값입니다.") Integer id,
		@RequestParam("startDate")
		@DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startDate,
		@RequestParam("endDate")
		@DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endDate,
		@RequestParam(value = "initialAmount", required = false, defaultValue = "10000000") Long initialAmount
	) {
		IndexBacktestRequestDTO indexBacktestRequestDTO = IndexBacktestRequestDTO.builder()
			.startDate(startDate)
			.endDate(endDate)
			.initialAmount(initialAmount)
			.build();
		IndexBacktestResponseDTO backtestResult = indexBacktestService.calculateIndexBacktest(indexBacktestRequestDTO,
			id);
		return ResponseEntity.ok(ResponseUtil.success(backtestResult));
	}

}
