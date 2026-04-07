package com.chan.stock_portfolio_backtest_api.service;

import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestItemDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestResponseDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.RebalanceFrequency;
import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import com.chan.stock_portfolio_backtest_api.stock.domain.StockPrice;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockPriceRepository;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockRepository;
import com.chan.stock_portfolio_backtest_api.portfolio.service.PortfolioBacktestService;
import com.chan.stock_portfolio_backtest_api.stock.util.PortfolioCalculator;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyList;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class PortfolioBacktestServiceCustomStockTest {

    @Mock
    private StockRepository stockRepository;

    @Mock
    private StockPriceRepository stockPriceRepository;

    @InjectMocks
    private PortfolioBacktestService portfolioBacktestService;

    @Test
    void testCalculatePortfolioWithCustomStock() {
        // Given: 사용자 정의 종목만 포함된 포트폴리오
        PortfolioBacktestRequestItemDTO customStock1 = PortfolioBacktestRequestItemDTO.builder()
                .customStockName("사용자정의종목A")
                .annualReturnRate(10.0f)
                .weight(0.6f)
                .build();

        PortfolioBacktestRequestItemDTO customStock2 = PortfolioBacktestRequestItemDTO.builder()
                .customStockName("사용자정의종목B")
                .annualReturnRate(15.0f)
                .weight(0.4f)
                .build();

        PortfolioBacktestRequestDTO request = PortfolioBacktestRequestDTO.builder()
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 12, 31))
                .amount(1000000L)
                .portfolioBacktestRequestItemDTOList(Arrays.asList(customStock1, customStock2))
                .build();

        // When: 백테스트 수행
        PortfolioBacktestResponseDTO result = portfolioBacktestService.calculatePortfolio(request);

        // Then: 결과 검증
        assertNotNull(result);
        assertEquals(2, result.getPortfolioBacktestResponseItemDTOList().size());

        // 가중평균 수익률: 10% * 0.6 + 15% * 0.4 ≈ 12% (일별 복리 기반, 주말제외 ~260일 vs 252 거래일 가정으로 약간의 편차)
        float expectedPortfolioReturn = 12.0f;
        assertEquals(expectedPortfolioReturn, result.getTotalRor(), 1.0f);

        // 개별 종목 결과 확인
        assertEquals("사용자정의종목A", result.getPortfolioBacktestResponseItemDTOList().get(0).getName());
        assertEquals("사용자정의종목B", result.getPortfolioBacktestResponseItemDTOList().get(1).getName());

        // 종목별 수익률 확인 (일별 복리 기반으로 연율과 약간의 편차 허용)
        assertEquals(10.0f, result.getPortfolioBacktestResponseItemDTOList().get(0).getTotalRor(), 1.0f);
        assertEquals(15.0f, result.getPortfolioBacktestResponseItemDTOList().get(1).getTotalRor(), 1.0f);
    }

    @Test
    void testCustomStockValidation() {
        // Given: 잘못된 사용자 정의 종목 (이름만 있고 수익률 없음)
        PortfolioBacktestRequestItemDTO invalidCustomStock = PortfolioBacktestRequestItemDTO.builder()
                .customStockName("잘못된종목")
                .weight(1.0f)
                .build();

        PortfolioBacktestRequestDTO request = PortfolioBacktestRequestDTO.builder()
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 12, 31))
                .amount(1000000L)
                .portfolioBacktestRequestItemDTOList(Arrays.asList(invalidCustomStock))
                .build();

        // When & Then: 예외 발생해야 함
        assertThrows(Exception.class, () -> {
            portfolioBacktestService.calculatePortfolio(request);
        });
    }

    @Test
    void testCalculatePortfolioWithDifferentRebalanceFrequencies() {
        PortfolioBacktestRequestItemDTO growthStock = PortfolioBacktestRequestItemDTO.builder()
                .customStockName("고수익")
                .annualReturnRate(40.0f)
                .weight(0.5f)
                .build();

        PortfolioBacktestRequestItemDTO defensiveStock = PortfolioBacktestRequestItemDTO.builder()
                .customStockName("저수익")
                .annualReturnRate(-10.0f)
                .weight(0.5f)
                .build();

        PortfolioBacktestRequestDTO noneRequest = PortfolioBacktestRequestDTO.builder()
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 12, 31))
                .amount(1000000L)
                .rebalanceFrequency(RebalanceFrequency.NONE)
                .portfolioBacktestRequestItemDTOList(Arrays.asList(growthStock, defensiveStock))
                .build();

        PortfolioBacktestRequestDTO monthlyRequest = PortfolioBacktestRequestDTO.builder()
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 12, 31))
                .amount(1000000L)
                .rebalanceFrequency(RebalanceFrequency.MONTHLY)
                .portfolioBacktestRequestItemDTOList(Arrays.asList(growthStock, defensiveStock))
                .build();

        PortfolioBacktestResponseDTO noneResult = portfolioBacktestService.calculatePortfolio(noneRequest);
        PortfolioBacktestResponseDTO monthlyResult = portfolioBacktestService.calculatePortfolio(monthlyRequest);

        assertNotNull(noneResult);
        assertNotNull(monthlyResult);
        assertNotEquals(noneResult.getTotalRor(), monthlyResult.getTotalRor());
        assertNotEquals(noneResult.getTotalAmount(), monthlyResult.getTotalAmount());
    }

    @Test
    void testMixedPortfolio_UsesMarketTradingDatesForCustomStock() {
        Stock marketStock = Stock.builder()
                .id(1)
                .name("시장종목")
                .shortCode("MKT")
                .build();

        PortfolioBacktestRequestItemDTO marketItem = PortfolioBacktestRequestItemDTO.builder()
                .stockId(1)
                .weight(0.5f)
                .build();

        PortfolioBacktestRequestItemDTO customItem = PortfolioBacktestRequestItemDTO.builder()
                .customStockName("커스텀")
                .annualReturnRate(100.0f)
                .weight(0.5f)
                .build();

        LocalDate startDate = LocalDate.of(2023, 1, 2);
        LocalDate endDate = LocalDate.of(2023, 1, 6);

        PortfolioBacktestRequestDTO request = PortfolioBacktestRequestDTO.builder()
                .startDate(startDate)
                .endDate(endDate)
                .amount(1_000_000L)
                .portfolioBacktestRequestItemDTOList(Arrays.asList(marketItem, customItem))
                .build();

        StockPrice day0 = StockPrice.builder()
                .stock(marketStock)
                .baseDate(LocalDate.of(2023, 1, 2))
                .closePrice(100.0f)
                .openPrice(100.0f)
                .lowPrice(99.0f)
                .highPrice(101.0f)
                .build();
        StockPrice day1 = StockPrice.builder()
                .stock(marketStock)
                .baseDate(LocalDate.of(2023, 1, 3))
                .closePrice(100.0f)
                .openPrice(100.0f)
                .lowPrice(99.0f)
                .highPrice(101.0f)
                .build();
        StockPrice day2 = StockPrice.builder()
                .stock(marketStock)
                .baseDate(LocalDate.of(2023, 1, 5))
                .closePrice(100.0f)
                .openPrice(100.0f)
                .lowPrice(99.0f)
                .highPrice(101.0f)
                .build();

        when(stockRepository.findAllById(List.of(1))).thenReturn(List.of(marketStock));
        when(stockPriceRepository.findLatestPricesBeforeStartDate(anyList(), any())).thenReturn(List.of());
        when(stockPriceRepository.findByStockInAndBaseDateBetween(anyList(), any(), any()))
                .thenReturn(List.of(day0, day1, day2));

        PortfolioBacktestResponseDTO result = portfolioBacktestService.calculatePortfolio(request);

        Map<LocalDate, Float> customDailyRor = PortfolioCalculator.generateDailyRorFromAnnual(100.0f, startDate, endDate);
        float customDailyPercent = customDailyRor.values().iterator().next();
        double oneDayDecimal = (customDailyPercent * 0.5d) / 100d;
        float expectedWithMarketDates = (float) ((Math.pow(1 + oneDayDecimal, 2) - 1) * 100);
        float legacyUnionResult = (float) ((Math.pow(1 + oneDayDecimal, 5) - 1) * 100);

        assertEquals(expectedWithMarketDates, result.getTotalRor(), 0.0001f);
        assertNotEquals(legacyUnionResult, result.getTotalRor(), 0.0001f);
    }
}
