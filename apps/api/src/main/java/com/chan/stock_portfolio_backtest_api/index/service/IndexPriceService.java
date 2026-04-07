package com.chan.stock_portfolio_backtest_api.index.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.chan.stock_portfolio_backtest_api.index.dto.IndexPriceResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.dto.PagedResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.index.repository.IndexPriceRepository;

@Service
public class IndexPriceService {
	private final IndexPriceRepository indexPriceRepository;

	public IndexPriceService(IndexPriceRepository indexPriceRepository) {
		this.indexPriceRepository = indexPriceRepository;
	}

	public List<IndexPriceResponseDTO> findIndexPriceByIndexId(Integer stockId) {
		List<IndexPriceResponseDTO> indexPriceResponseDTOList = indexPriceRepository.findAllByIndexInfo_Id(stockId)
			.stream()
			.map(IndexPriceResponseDTO::entityToDTO)
			.toList();

		if (indexPriceResponseDTOList.isEmpty()) {
			throw new EntityNotFoundException("index price not found");
		}

		return indexPriceResponseDTOList;
	}

	public List<IndexPriceResponseDTO> findIndexPriceByIndexInfoIdAndDateRange(Integer id, LocalDate startDate,
		LocalDate endDate) {
		if (startDate.isAfter(endDate)) {
			throw new IllegalArgumentException("Start date must not be after end date.");
		}

		List<IndexPriceResponseDTO> indexPriceResponseDTOList = indexPriceRepository.findByIndexInfoIdAndDateRange(id,
				startDate, endDate)
			.stream()
			.map(IndexPriceResponseDTO::entityToDTO)
			.toList();

		if (indexPriceResponseDTOList.isEmpty()) {
			throw new EntityNotFoundException("index price not found");
		}

		return indexPriceResponseDTOList;
	}

	public PagedResponseDTO<IndexPriceResponseDTO> findIndexPricesByIndexInfoIdWithPaging(
		Integer id, Integer page, Integer size, String sortBy, String direction) {
		Sort.Direction sortDirection = Sort.Direction.fromString(direction);
		Pageable pageable = PageRequest.of(page, size, Sort.by(sortDirection, sortBy));

		Page<IndexPriceResponseDTO> indexPricePage = indexPriceRepository.findByIndexInfoIdWithPaging(id, pageable)
			.map(IndexPriceResponseDTO::entityToDTO);

		if (indexPricePage.isEmpty()) {
			throw new EntityNotFoundException(String.format("%s not found", id));
		}

		return PagedResponseDTO.of(indexPricePage);
	}

	public PagedResponseDTO<IndexPriceResponseDTO> findIndexPricesByIndexInfoIdAndDateRangeWithPaging(
		Integer id, LocalDate startDate, LocalDate endDate, Integer page, Integer size, String sortBy,
		String direction) {
		if (startDate.isAfter(endDate)) {
			throw new IllegalArgumentException("Start date must not be after end date.");
		}

		Sort.Direction sortDirection = Sort.Direction.fromString(direction);
		Pageable pageable = PageRequest.of(page, size, Sort.by(sortDirection, sortBy));

		Page<IndexPriceResponseDTO> indexPricePage = indexPriceRepository
			.findByIndexInfoIdAndDateRangeWithPaging(id, startDate, endDate, pageable)
			.map(IndexPriceResponseDTO::entityToDTO);

		if (indexPricePage.isEmpty()) {
			throw new EntityNotFoundException(String.format("id: %s not found", id));
		}

		return PagedResponseDTO.of(indexPricePage);
	}

}
