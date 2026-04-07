package com.chan.stock_portfolio_backtest_api.index.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chan.stock_portfolio_backtest_api.index.domain.IndexInfo;
import com.chan.stock_portfolio_backtest_api.index.dto.IndexInfoResponseDTO;
import com.chan.stock_portfolio_backtest_api.index.dto.IndexSearchResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.index.repository.IndexInfoRepository;

@Service
public class IndexInfoService {
	private final IndexInfoRepository indexInfoRepository;

	public IndexInfoService(IndexInfoRepository indexInfoRepository) {
		this.indexInfoRepository = indexInfoRepository;
	}

	public IndexInfoResponseDTO findIndexInfoById(Integer id) {
		return IndexInfoResponseDTO.entityToDTO(indexInfoRepository.findById(id)
			.orElseThrow(() -> new EntityNotFoundException("해당 Entity가 없습니다.")));
	}

	public List<IndexSearchResponseDTO> findIndexesByQuery(String query) {
		List<IndexSearchResponseDTO> indexSearchResponseDTOList = indexInfoRepository.findByNameOrCategoryContaining(
			query);

		if (indexSearchResponseDTOList.isEmpty()) {
			throw new EntityNotFoundException(String.format("Index not found"));
		}

		return indexSearchResponseDTOList;
	}

	public List<IndexInfoResponseDTO> findIndexesByParams(String name, String category) {
		if ((name == null || name.isEmpty()) && (category == null || category.isEmpty())) {
			throw new IllegalArgumentException("At least one search parameter must be provided.");
		}

		List<IndexInfo> indexInfoList = List.of();

		if (name != null && !name.isEmpty()) {
			indexInfoList = indexInfoRepository.findAllByName(name);
		} else if (category != null && !category.isEmpty()) {
			indexInfoList = indexInfoRepository.findAllByCategory(category);
		}

		if (indexInfoList.isEmpty()) {
			throw new EntityNotFoundException(String.format("Index not found for name='%s', category='%s'",
				name, category));
		}

		return indexInfoList.stream()
			.map(IndexInfoResponseDTO::entityToDTO)
			.toList();
	}
}
