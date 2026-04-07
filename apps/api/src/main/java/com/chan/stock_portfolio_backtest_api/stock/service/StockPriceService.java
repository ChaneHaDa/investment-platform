package com.chan.stock_portfolio_backtest_api.stock.service;

import java.time.LocalDate;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.chan.stock_portfolio_backtest_api.common.dto.PagedResponseDTO;
import com.chan.stock_portfolio_backtest_api.stock.dto.StockPriceResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockPriceRepository;

@Service
public class StockPriceService {
	private final StockPriceRepository stockPriceRepository;

	public StockPriceService(StockPriceRepository stockPriceRepository) {
		this.stockPriceRepository = stockPriceRepository;
	}

	public PagedResponseDTO<StockPriceResponseDTO> findStockPricesByStockIdWithPaging(
		Integer id, Integer page, Integer size, String sortBy, String direction) {
		Sort.Direction sortDirection = Sort.Direction.fromString(direction);
		Pageable pageable = PageRequest.of(page, size, Sort.by(sortDirection, sortBy));

		Page<StockPriceResponseDTO> stockPricePage = stockPriceRepository.findByStockIdWithPaging(id, pageable)
			.map(StockPriceResponseDTO::entityToDTO);

		if (stockPricePage.isEmpty()) {
			throw new EntityNotFoundException(String.format("%s not found", id));
		}

		return PagedResponseDTO.of(stockPricePage);
	}

	public PagedResponseDTO<StockPriceResponseDTO> findStockPricesByStockIdAndDateRangeWithPaging(
		Integer id, LocalDate startDate, LocalDate endDate, Integer page, Integer size, String sortBy,
		String direction) {
		if (startDate.isAfter(endDate)) {
			throw new IllegalArgumentException("Start date must not be after end date.");
		}

		Sort.Direction sortDirection = Sort.Direction.fromString(direction);
		Pageable pageable = PageRequest.of(page, size, Sort.by(sortDirection, sortBy));

		Page<StockPriceResponseDTO> stockPricePage = stockPriceRepository
			.findByStockIdAndDateRangeWithPaging(id, startDate, endDate, pageable)
			.map(StockPriceResponseDTO::entityToDTO);

		if (stockPricePage.isEmpty()) {
			throw new EntityNotFoundException(String.format("id: %s not found", id));
		}

		return PagedResponseDTO.of(stockPricePage);
	}
}
