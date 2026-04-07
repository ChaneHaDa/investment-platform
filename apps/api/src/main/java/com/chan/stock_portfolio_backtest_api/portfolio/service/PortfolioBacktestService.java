package com.chan.stock_portfolio_backtest_api.portfolio.service;

import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import com.chan.stock_portfolio_backtest_api.stock.domain.StockPrice;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestItemDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestResponseDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestResponseItemDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.RebalanceFrequency;
import com.chan.stock_portfolio_backtest_api.common.exception.BadRequestException;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.common.exception.InvalidDateRangeException;
import com.chan.stock_portfolio_backtest_api.common.constants.AppConstants;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockPriceRepository;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockRepository;
import com.chan.stock_portfolio_backtest_api.stock.util.PortfolioCalculator;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class PortfolioBacktestService {

    private final StockRepository stockRepository;
    private final StockPriceRepository stockPriceRepository;

    public PortfolioBacktestService(
            StockRepository stockRepository,
            StockPriceRepository stockPriceRepository) {
        this.stockRepository = stockRepository;
        this.stockPriceRepository = stockPriceRepository;
    }

    public PortfolioBacktestResponseDTO calculatePortfolio(PortfolioBacktestRequestDTO request) {
        LocalDate startDate = request.getStartDate();
        LocalDate endDate = request.getEndDate();

        if (startDate.isAfter(endDate)) {
            throw new InvalidDateRangeException(AppConstants.DATE_VALIDATION_ERROR);
        }

        List<PortfolioBacktestRequestItemDTO> requestItems = request.getPortfolioBacktestRequestItemDTOList();

        for (PortfolioBacktestRequestItemDTO item : requestItems) {
            if (!item.isValid()) {
                throw new EntityNotFoundException(
                    "Invalid portfolio item: must have either stockId or (customStockName + annualReturnRate)");
            }
        }

        Set<Integer> uniqueStockIds = new HashSet<>();
        for (PortfolioBacktestRequestItemDTO item : requestItems) {
            Integer stockId = item.getStockId();
            if (stockId != null && !uniqueStockIds.add(stockId)) {
                throw new BadRequestException("Duplicate stockId is not allowed: " + stockId);
            }
        }

        RebalanceFrequency rebalanceFrequency = request.getRebalanceFrequency() == null
                ? RebalanceFrequency.DAILY
                : request.getRebalanceFrequency();

        List<PortfolioBacktestResponseItemDTO> responseItemDTOs = new ArrayList<>();
        Map<PortfolioBacktestRequestItemDTO, Map<LocalDate, Float>> itemDailyRorMap = new LinkedHashMap<>();

        LocalDate startMonth = startDate.withDayOfMonth(1);
        LocalDate endMonth = endDate.withDayOfMonth(1);

        // 1. 기존 주식 ID 조회
        List<Integer> stockIds = requestItems.stream()
                .filter(item -> !item.isCustomStock())
                .map(PortfolioBacktestRequestItemDTO::getStockId)
                .toList();

        List<Stock> stocks = stockRepository.findAllById(stockIds);

        if (stocks.size() != stockIds.size()) {
            throw new EntityNotFoundException("Some stocks not found");
        }

        Map<Integer, Stock> stockMap = stocks.stream()
                .collect(Collectors.toMap(Stock::getId, stock -> stock));

        // 2. 배치로 일별 주가 데이터 조회 (startDate - 7일부터, 첫 날 수익률 계산용)
        List<Stock> stocksToQuery = requestItems.stream()
                .filter(item -> !item.isCustomStock())
                .map(item -> stockMap.get(item.getStockId()))
                .filter(Objects::nonNull)
                .collect(Collectors.toList());

        Map<Stock, Map<LocalDate, Float>> stockDailyRorCache =
                calculateAllStockDailyRor(stocksToQuery, startDate, endDate);

        for (PortfolioBacktestRequestItemDTO item : requestItems) {
            Map<LocalDate, Float> stockDailyRor;
            String stockName;

            if (item.isCustomStock()) {
                stockDailyRor = PortfolioCalculator.generateDailyRorFromAnnual(
                    item.getAnnualReturnRate(), startDate, endDate);
                stockName = item.getCustomStockName();
            } else {
                Stock stock = stockMap.get(item.getStockId());
                if (stock == null) {
                    throw new EntityNotFoundException("Stock not found for ID: " + item.getStockId());
                }
                stockDailyRor = stockDailyRorCache.get(stock);
                stockName = stock.getName();
            }

            // 3. 주식별 복리 수익률
            float stockTotalRor = PortfolioCalculator.calculateCompoundRorFromDaily(stockDailyRor);

            // 4. 주식별 월별 수익률 (응답용)
            Map<LocalDate, Float> stockMonthlyRor = PortfolioCalculator.aggregateDailyToMonthlyRor(stockDailyRor);

            // 5. 개별 주식 결과 DTO 생성
            PortfolioBacktestResponseItemDTO responseItem = PortfolioBacktestResponseItemDTO.builder()
                    .name(stockName)
                    .totalRor(stockTotalRor)
                    .monthlyRor(stockMonthlyRor)
                    .build();
            responseItemDTOs.add(responseItem);
            itemDailyRorMap.put(item, stockDailyRor);
        }

        // 6. 리밸런싱 주기에 따라 포트폴리오 일별 수익률 계산
        Map<LocalDate, Float> portfolioDailyRor = calculatePortfolioDailyRorWithRebalancing(
                itemDailyRorMap, startDate, endDate, rebalanceFrequency);

        // 7. 포트폴리오 월별 집계
        Map<LocalDate, Float> portfolioMonthlyRor = PortfolioCalculator.aggregateDailyToMonthlyRor(portfolioDailyRor);

        // 8. 포트폴리오 전체 복리 수익률
        float totalRor = PortfolioCalculator.calculateCompoundRorFromDaily(portfolioDailyRor);

        // 9. 월별 누적 자산 금액 계산
        Map<LocalDate, Long> monthlyAmount = calculateMonthlyAmounts(portfolioMonthlyRor, startMonth, endMonth, request.getAmount());

        // 10. 변동성 계산 (일별 → 월별 환산)
        float volatility = PortfolioCalculator.calculateDailyVolatility(portfolioDailyRor);

        long totalAmount = monthlyAmount.isEmpty()
                ? request.getAmount()
                : monthlyAmount.get(endMonth);

        return PortfolioBacktestResponseDTO.builder()
                .portfolioInput(request)
                .totalRor(totalRor)
                .totalAmount(totalAmount)
                .monthlyRor(new TreeMap<>(portfolioMonthlyRor))
                .monthlyAmount(monthlyAmount)
                .volatility(volatility)
                .portfolioBacktestResponseItemDTOList(responseItemDTOs)
                .build();
    }

    private Map<LocalDate, Float> calculatePortfolioDailyRorWithRebalancing(
            Map<PortfolioBacktestRequestItemDTO, Map<LocalDate, Float>> itemDailyRorMap,
            LocalDate startDate,
            LocalDate endDate,
            RebalanceFrequency rebalanceFrequency) {

        if (itemDailyRorMap.isEmpty()) {
            return new TreeMap<>();
        }

        boolean hasMarketStock = itemDailyRorMap.keySet().stream().anyMatch(item -> !item.isCustomStock());
        TreeSet<LocalDate> allTradingDates = new TreeSet<>();
        TreeSet<LocalDate> marketTradingDates = new TreeSet<>();

        for (Map.Entry<PortfolioBacktestRequestItemDTO, Map<LocalDate, Float>> entry : itemDailyRorMap.entrySet()) {
            PortfolioBacktestRequestItemDTO item = entry.getKey();
            Map<LocalDate, Float> dailyRor = entry.getValue();
            for (LocalDate date : dailyRor.keySet()) {
                if (!date.isBefore(startDate) && !date.isAfter(endDate)) {
                    allTradingDates.add(date);
                    if (!item.isCustomStock()) {
                        marketTradingDates.add(date);
                    }
                }
            }
        }

        TreeSet<LocalDate> tradingDates = hasMarketStock ? marketTradingDates : allTradingDates;

        if (tradingDates.isEmpty()) {
            return new TreeMap<>();
        }

        Map<PortfolioBacktestRequestItemDTO, Double> positionValues = new LinkedHashMap<>();
        for (PortfolioBacktestRequestItemDTO item : itemDailyRorMap.keySet()) {
            positionValues.put(item, (double) item.getWeight());
        }

        LocalDate lastRebalanceDate = tradingDates.first();
        Map<LocalDate, Float> portfolioDailyRor = new TreeMap<>();

        for (LocalDate tradingDate : tradingDates) {
            if (shouldRebalance(rebalanceFrequency, lastRebalanceDate, tradingDate)) {
                double totalValue = calculateTotalValue(positionValues);
                rebalanceToTargetWeights(positionValues, totalValue);
                lastRebalanceDate = tradingDate;
            }

            double totalValue = calculateTotalValue(positionValues);
            if (totalValue <= 0d) {
                portfolioDailyRor.put(tradingDate, AppConstants.DEFAULT_DAILY_ROR);
                continue;
            }

            double dailyPortfolioRor = 0d;
            for (Map.Entry<PortfolioBacktestRequestItemDTO, Double> position : positionValues.entrySet()) {
                PortfolioBacktestRequestItemDTO item = position.getKey();
                double weight = position.getValue() / totalValue;
                float dailyRor = itemDailyRorMap.get(item).getOrDefault(tradingDate, AppConstants.DEFAULT_DAILY_ROR);
                dailyPortfolioRor += weight * dailyRor;
            }

            portfolioDailyRor.put(tradingDate, (float) dailyPortfolioRor);

            for (Map.Entry<PortfolioBacktestRequestItemDTO, Double> position : positionValues.entrySet()) {
                PortfolioBacktestRequestItemDTO item = position.getKey();
                float dailyRor = itemDailyRorMap.get(item).getOrDefault(tradingDate, AppConstants.DEFAULT_DAILY_ROR);
                double updatedValue = position.getValue()
                        * (1 + dailyRor / AppConstants.PERCENTAGE_CONVERSION_FACTOR);
                position.setValue(updatedValue);
            }
        }

        return portfolioDailyRor;
    }

    private boolean shouldRebalance(
            RebalanceFrequency rebalanceFrequency,
            LocalDate lastRebalanceDate,
            LocalDate currentDate) {
        if (lastRebalanceDate == null || rebalanceFrequency == null) {
            return true;
        }

        return switch (rebalanceFrequency) {
            case NONE -> false;
            case DAILY -> currentDate.isAfter(lastRebalanceDate);
            case MONTHLY -> currentDate.getYear() != lastRebalanceDate.getYear()
                    || currentDate.getMonthValue() != lastRebalanceDate.getMonthValue();
            case QUARTERLY -> currentDate.getYear() != lastRebalanceDate.getYear()
                    || quarterOf(currentDate) != quarterOf(lastRebalanceDate);
            case YEARLY -> currentDate.getYear() != lastRebalanceDate.getYear();
        };
    }

    private int quarterOf(LocalDate date) {
        return ((date.getMonthValue() - 1) / 3) + 1;
    }

    private double calculateTotalValue(Map<PortfolioBacktestRequestItemDTO, Double> positionValues) {
        return positionValues.values().stream().mapToDouble(Double::doubleValue).sum();
    }

    private void rebalanceToTargetWeights(
            Map<PortfolioBacktestRequestItemDTO, Double> positionValues,
            double totalValue) {
        if (totalValue <= 0d) {
            return;
        }

        for (Map.Entry<PortfolioBacktestRequestItemDTO, Double> position : positionValues.entrySet()) {
            position.setValue(totalValue * position.getKey().getWeight());
        }
    }

    private Map<Stock, Map<LocalDate, Float>> calculateAllStockDailyRor(
            List<Stock> stocks, LocalDate startDate, LocalDate endDate) {

        if (stocks.isEmpty()) {
            return new HashMap<>();
        }

        List<StockPrice> latestPricesBeforeStartDate = Optional
                .ofNullable(stockPriceRepository.findLatestPricesBeforeStartDate(stocks, startDate))
                .orElseGet(Collections::emptyList);

        List<StockPrice> pricesInRange = Optional
                .ofNullable(stockPriceRepository.findByStockInAndBaseDateBetween(stocks, startDate, endDate))
                .orElseGet(Collections::emptyList);

        List<StockPrice> allPrices = new ArrayList<>(latestPricesBeforeStartDate.size() + pricesInRange.size());
        allPrices.addAll(latestPricesBeforeStartDate);
        allPrices.addAll(pricesInRange);

        // 주식별로 그룹화 (stockId 기준)
        Map<Integer, List<StockPrice>> stockPriceGroups = allPrices.stream()
                .filter(stockPrice -> stockPrice.getStock() != null && stockPrice.getStock().getId() != null)
                .collect(Collectors.groupingBy(stockPrice -> stockPrice.getStock().getId()));

        Map<Stock, Map<LocalDate, Float>> result = new HashMap<>();
        for (Stock stock : stocks) {
            List<StockPrice> stockPrices = stockPriceGroups.getOrDefault(stock.getId(), Collections.emptyList())
                    .stream()
                    .sorted(Comparator.comparing(StockPrice::getBaseDate))
                    .toList();

            // 종가 기반 일별 수익률 계산
            Map<LocalDate, Float> allDailyRor = PortfolioCalculator.calculateDailyRorFromPrices(stockPrices);

            // 요청 범위(startDate~endDate)로 필터링
            Map<LocalDate, Float> filteredDailyRor = new TreeMap<>();
            for (Map.Entry<LocalDate, Float> entry : allDailyRor.entrySet()) {
                if (!entry.getKey().isBefore(startDate) && !entry.getKey().isAfter(endDate)) {
                    filteredDailyRor.put(entry.getKey(), entry.getValue());
                }
            }
            result.put(stock, filteredDailyRor);
        }

        return result;
    }

    private Map<LocalDate, Long> calculateMonthlyAmounts(Map<LocalDate, Float> monthlyRorMap,
                                                         LocalDate startMonth,
                                                         LocalDate endMonth,
                                                         Long initialAmount) {
        Map<LocalDate, Long> monthlyAmounts = new TreeMap<>();
        double currentAmount = initialAmount;
        LocalDate current = startMonth;
        while (!current.isAfter(endMonth)) {
            float monthlyRor = monthlyRorMap.getOrDefault(current, AppConstants.DEFAULT_MONTHLY_ROR);
            currentAmount = currentAmount * (1 + monthlyRor / AppConstants.PERCENTAGE_CONVERSION_FACTOR);
            monthlyAmounts.put(current, (long) currentAmount);
            current = current.plusMonths(1);
        }
        return monthlyAmounts;
    }
}
