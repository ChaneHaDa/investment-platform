package com.chan.stock_portfolio_backtest_api.index.service;

import java.time.LocalDate;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.chan.stock_portfolio_backtest_api.index.domain.IndexInfo;
import com.chan.stock_portfolio_backtest_api.index.domain.IndexPrice;
import com.chan.stock_portfolio_backtest_api.index.dto.IndexBacktestRequestDTO;
import com.chan.stock_portfolio_backtest_api.index.dto.IndexBacktestResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.index.repository.IndexInfoRepository;
import com.chan.stock_portfolio_backtest_api.index.repository.IndexPriceRepository;
import com.chan.stock_portfolio_backtest_api.common.constants.AppConstants;
import com.chan.stock_portfolio_backtest_api.stock.util.PortfolioCalculator;

@Service
public class IndexBacktestService {

	private final IndexInfoRepository indexInfoRepository;
	private final IndexPriceRepository indexPriceRepository;

	public IndexBacktestService(IndexInfoRepository indexInfoRepository,
		IndexPriceRepository indexPriceRepository) {
		this.indexInfoRepository = indexInfoRepository;
		this.indexPriceRepository = indexPriceRepository;
	}

	public IndexBacktestResponseDTO calculateIndexBacktest(IndexBacktestRequestDTO requestDTO, Integer id) {
		LocalDate startDate = requestDTO.getStartDate();
		LocalDate endDate = requestDTO.getEndDate();

		if (startDate.isAfter(endDate)) {
			throw new IllegalArgumentException("Start date must not be after end date.");
		}

		// 1. 인덱스 정보 조회
		IndexInfo indexInfo = indexInfoRepository.findById(id)
			.orElseThrow(() -> new EntityNotFoundException("IndexInfo not found with id: " + id));

		// 2. 인덱스 Price 데이터로 월별 수익률 계산
		List<IndexPrice> indexPrices = indexPriceRepository.findByIndexInfoIdAndDateRange(indexInfo.getId(), startDate, endDate);
		Map<LocalDate, Float> indexMonthlyRor = calculateMonthlyRor(indexPrices);

		LocalDate startMonth = startDate.withDayOfMonth(1);
		LocalDate endMonth = endDate.withDayOfMonth(1);

		// 3. 전체 인덱스 누적(복리) 수익률 계산 (백분율)
		float totalRor = PortfolioCalculator.calculateCompoundRor(indexMonthlyRor, startMonth, endMonth);

		// 4. 변동성 계산 (월별 수익률의 표준편차)
		float volatility = PortfolioCalculator.calculateVolatility(indexMonthlyRor);

		// 5. 결과 DTO 생성 및 반환
		return IndexBacktestResponseDTO.builder()
			.totalRor(totalRor)
			.volatility(volatility)
			.monthlyRor(indexMonthlyRor)
			.build();
	}

	private Map<LocalDate, Float> calculateMonthlyRor(List<IndexPrice> indexPrices) {
		if (indexPrices == null || indexPrices.isEmpty() || indexPrices.size() < 2) {
			return Collections.emptyMap();
		}

		Map<LocalDate, Double> monthlyCompoundFactor = new TreeMap<>();
		List<IndexPrice> sorted = indexPrices.stream()
			.filter(price -> price.getBaseDate() != null && price.getClosePrice() != null)
			.sorted(Comparator.comparing(IndexPrice::getBaseDate))
			.toList();

		for (int i = 1; i < sorted.size(); i++) {
			Float prevClose = sorted.get(i - 1).getClosePrice();
			Float currClose = sorted.get(i).getClosePrice();
			LocalDate currentDate = sorted.get(i).getBaseDate();

			if (prevClose == null || prevClose == 0 || currClose == null) {
				continue;
			}

			float dailyRor = (currClose / prevClose - 1) * AppConstants.PERCENTAGE_CONVERSION_FACTOR;
			LocalDate monthKey = currentDate.withDayOfMonth(1);
			double factor = monthlyCompoundFactor.getOrDefault(monthKey, 1.0);
			monthlyCompoundFactor.put(monthKey, factor * (1 + dailyRor / AppConstants.PERCENTAGE_CONVERSION_FACTOR));
		}

		Map<LocalDate, Float> indexMonthlyRor = new TreeMap<>();
		for (Map.Entry<LocalDate, Double> entry : monthlyCompoundFactor.entrySet()) {
			indexMonthlyRor.put(entry.getKey(), (float) ((entry.getValue() - 1.0) * AppConstants.PERCENTAGE_CONVERSION_FACTOR));
		}

		return indexMonthlyRor;
	}

}
