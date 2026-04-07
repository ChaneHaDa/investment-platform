package com.chan.stock_portfolio_backtest_api.util;

import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import com.chan.stock_portfolio_backtest_api.stock.domain.StockPrice;
import com.chan.stock_portfolio_backtest_api.stock.util.PortfolioCalculator;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import static org.junit.jupiter.api.Assertions.*;

class PortfolioCalculatorTest {

    @Test
    void testGenerateMonthlyRorFromAnnual() {
        // Given: 연 10% 수익률
        float annualReturnRate = 10.0f;
        LocalDate startDate = LocalDate.of(2023, 1, 15);
        LocalDate endDate = LocalDate.of(2023, 3, 20);

        // When: 월별 수익률 생성
        Map<LocalDate, Float> monthlyRor = PortfolioCalculator.generateMonthlyRorFromAnnual(
            annualReturnRate, startDate, endDate);

        // Then: 결과 검증
        assertEquals(3, monthlyRor.size());

        float expectedMonthlyRate = (float) ((Math.pow(1.1, 1.0/12.0) - 1) * 100);

        assertTrue(monthlyRor.containsKey(LocalDate.of(2023, 1, 1)));
        assertTrue(monthlyRor.containsKey(LocalDate.of(2023, 2, 1)));
        assertTrue(monthlyRor.containsKey(LocalDate.of(2023, 3, 1)));

        for (Float rate : monthlyRor.values()) {
            assertEquals(expectedMonthlyRate, rate, 0.001f);
        }
    }

    @Test
    void testCompoundCalculationAccuracy() {
        // Given: 연 12% 수익률로 1년간 백테스트
        float annualReturnRate = 12.0f;
        LocalDate startDate = LocalDate.of(2023, 1, 1);
        LocalDate endDate = LocalDate.of(2023, 12, 31);

        // When: 월별 수익률 생성 후 복리 계산
        Map<LocalDate, Float> monthlyRor = PortfolioCalculator.generateMonthlyRorFromAnnual(
            annualReturnRate, startDate, endDate);

        LocalDate startMonth = startDate.withDayOfMonth(1);
        LocalDate endMonth = endDate.withDayOfMonth(1);

        float compoundRor = PortfolioCalculator.calculateCompoundRor(monthlyRor, startMonth, endMonth);

        // Then: 복리 계산 결과가 원래 연수익률과 유사해야 함
        assertEquals(annualReturnRate, compoundRor, 0.1f);
    }

    @Test
    void testCalculateDailyRorFromPrices() {
        // Given: 3일간의 종가 데이터
        Stock stock = Stock.builder().id(1).name("테스트").build();
        List<StockPrice> prices = new ArrayList<>();
        prices.add(StockPrice.builder().stock(stock).baseDate(LocalDate.of(2023, 1, 2)).closePrice(100.0f).openPrice(100.0f).lowPrice(99.0f).highPrice(101.0f).build());
        prices.add(StockPrice.builder().stock(stock).baseDate(LocalDate.of(2023, 1, 3)).closePrice(105.0f).openPrice(100.0f).lowPrice(99.0f).highPrice(106.0f).build());
        prices.add(StockPrice.builder().stock(stock).baseDate(LocalDate.of(2023, 1, 4)).closePrice(102.0f).openPrice(105.0f).lowPrice(101.0f).highPrice(106.0f).build());

        // When
        Map<LocalDate, Float> dailyRor = PortfolioCalculator.calculateDailyRorFromPrices(prices);

        // Then
        assertEquals(2, dailyRor.size());
        // 105/100 - 1 = 5%
        assertEquals(5.0f, dailyRor.get(LocalDate.of(2023, 1, 3)), 0.01f);
        // 102/105 - 1 ≈ -2.857%
        assertEquals(-2.857f, dailyRor.get(LocalDate.of(2023, 1, 4)), 0.01f);
    }

    @Test
    void testAggregateDailyToMonthlyRor() {
        // Given: 2개월에 걸친 일별 수익률
        Map<LocalDate, Float> dailyRor = new TreeMap<>();
        // 1월: 1%, 2%, -1% → 복리: (1.01 * 1.02 * 0.99 - 1) * 100
        dailyRor.put(LocalDate.of(2023, 1, 2), 1.0f);
        dailyRor.put(LocalDate.of(2023, 1, 3), 2.0f);
        dailyRor.put(LocalDate.of(2023, 1, 4), -1.0f);
        // 2월: 3%, -2%  → 복리: (1.03 * 0.98 - 1) * 100
        dailyRor.put(LocalDate.of(2023, 2, 1), 3.0f);
        dailyRor.put(LocalDate.of(2023, 2, 2), -2.0f);

        // When
        Map<LocalDate, Float> monthlyRor = PortfolioCalculator.aggregateDailyToMonthlyRor(dailyRor);

        // Then
        assertEquals(2, monthlyRor.size());
        float expectedJan = (float) ((1.01 * 1.02 * 0.99 - 1) * 100);
        float expectedFeb = (float) ((1.03 * 0.98 - 1) * 100);
        assertEquals(expectedJan, monthlyRor.get(LocalDate.of(2023, 1, 1)), 0.01f);
        assertEquals(expectedFeb, monthlyRor.get(LocalDate.of(2023, 2, 1)), 0.01f);
    }

    @Test
    void testCalculateCompoundRorFromDaily() {
        // Given: 일별 수익률 3일
        Map<LocalDate, Float> dailyRor = new TreeMap<>();
        dailyRor.put(LocalDate.of(2023, 1, 2), 2.0f);
        dailyRor.put(LocalDate.of(2023, 1, 3), 3.0f);
        dailyRor.put(LocalDate.of(2023, 1, 4), -1.0f);

        // When
        float compoundRor = PortfolioCalculator.calculateCompoundRorFromDaily(dailyRor);

        // Then: (1.02 * 1.03 * 0.99 - 1) * 100
        float expected = (float) ((1.02 * 1.03 * 0.99 - 1) * 100);
        assertEquals(expected, compoundRor, 0.01f);
    }

    @Test
    void testMergeStockDailyIntoPortfolioDailyRor() {
        // Given
        Map<LocalDate, Float> portfolioMap = new TreeMap<>();
        portfolioMap.put(LocalDate.of(2023, 1, 2), 1.0f); // 기존 값

        Map<LocalDate, Float> stockMap = new TreeMap<>();
        stockMap.put(LocalDate.of(2023, 1, 2), 4.0f);
        stockMap.put(LocalDate.of(2023, 1, 3), 2.0f);

        // When: weight = 0.5
        PortfolioCalculator.mergeStockDailyIntoPortfolioDailyRor(portfolioMap, stockMap, 0.5f);

        // Then
        // 1/2: 기존 1.0 + 4.0 * 0.5 = 3.0
        assertEquals(3.0f, portfolioMap.get(LocalDate.of(2023, 1, 2)), 0.01f);
        // 1/3: 2.0 * 0.5 = 1.0
        assertEquals(1.0f, portfolioMap.get(LocalDate.of(2023, 1, 3)), 0.01f);
    }

    @Test
    void testCalculateDailyVolatility() {
        // Given: 일별 수익률
        Map<LocalDate, Float> dailyRor = new TreeMap<>();
        dailyRor.put(LocalDate.of(2023, 1, 2), 1.0f);
        dailyRor.put(LocalDate.of(2023, 1, 3), -1.0f);
        dailyRor.put(LocalDate.of(2023, 1, 4), 2.0f);
        dailyRor.put(LocalDate.of(2023, 1, 5), -2.0f);

        // When
        float volatility = PortfolioCalculator.calculateDailyVolatility(dailyRor);

        // Then: mean=0, variance=((1+1+4+4)/4)=2.5, stddev=sqrt(2.5), monthly=stddev*sqrt(21)
        double expectedDailyStdDev = Math.sqrt(2.5);
        double expectedMonthly = expectedDailyStdDev * Math.sqrt(21);
        assertEquals((float) expectedMonthly, volatility, 0.01f);
    }

    @Test
    void testCalculateDailyVolatility_EmptyReturns() {
        // Given
        Map<LocalDate, Float> dailyRor = new TreeMap<>();

        // When
        float volatility = PortfolioCalculator.calculateDailyVolatility(dailyRor);

        // Then
        assertEquals(0f, volatility);
    }

    @Test
    void testGenerateDailyRorFromAnnual() {
        // Given: 연 10% 수익률, 1주간 (월~금)
        float annualRate = 10.0f;
        LocalDate startDate = LocalDate.of(2023, 1, 2); // 월
        LocalDate endDate = LocalDate.of(2023, 1, 8);   // 일 (토/일 제외)

        // When
        Map<LocalDate, Float> dailyRor = PortfolioCalculator.generateDailyRorFromAnnual(
            annualRate, startDate, endDate);

        // Then: 월~금 5일만 생성 (토/일 제외)
        assertEquals(5, dailyRor.size());
        assertFalse(dailyRor.containsKey(LocalDate.of(2023, 1, 7))); // 토
        assertFalse(dailyRor.containsKey(LocalDate.of(2023, 1, 8))); // 일

        // 일별 수익률이 모두 동일한지 확인
        double expectedDailyRate = (Math.pow(1.1, 1.0 / 252) - 1) * 100;
        for (Float rate : dailyRor.values()) {
            assertEquals((float) expectedDailyRate, rate, 0.0001f);
        }
    }

    @Test
    void testGenerateDailyRorFromAnnual_CompoundAccuracy() {
        // Given: 연 12% 수익률, 1년간
        float annualRate = 12.0f;
        LocalDate startDate = LocalDate.of(2023, 1, 2);
        LocalDate endDate = LocalDate.of(2023, 12, 29);

        // When
        Map<LocalDate, Float> dailyRor = PortfolioCalculator.generateDailyRorFromAnnual(
            annualRate, startDate, endDate);

        // Then: 252 거래일 복리 = 12%
        float compoundRor = PortfolioCalculator.calculateCompoundRorFromDaily(dailyRor);
        assertEquals(annualRate, compoundRor, 0.5f);
    }
}
