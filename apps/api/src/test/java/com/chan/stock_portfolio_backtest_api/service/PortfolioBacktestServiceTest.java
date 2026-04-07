package com.chan.stock_portfolio_backtest_api.service;

import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import com.chan.stock_portfolio_backtest_api.stock.domain.StockPrice;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestItemDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestResponseDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.RebalanceFrequency;
import com.chan.stock_portfolio_backtest_api.common.exception.BadRequestException;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.common.exception.InvalidDateRangeException;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockPriceRepository;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockRepository;
import com.chan.stock_portfolio_backtest_api.portfolio.service.PortfolioBacktestService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDate;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyList;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class PortfolioBacktestServiceTest {

    @Mock
    private StockRepository stockRepository;

    @Mock
    private StockPriceRepository stockPriceRepository;

    @InjectMocks
    private PortfolioBacktestService portfolioBacktestService;

    private PortfolioBacktestRequestDTO requestDTO;
    private Stock testStock1;
    private Stock testStock2;
    private List<StockPrice> testStockPrices;

    @BeforeEach
    void setUp() {
        testStock1 = Stock.builder()
                .id(1)
                .name("삼성전자")
                .shortCode("005930")
                .build();

        testStock2 = Stock.builder()
                .id(2)
                .name("SK하이닉스")
                .shortCode("000660")
                .build();

        // 일별 StockPrice 데이터 생성 (2022-12-28 ~ 2023-02-03)
        // startDate - 7일 부터 조회하므로, 2022-12-26 이후 데이터가 필요
        testStockPrices = new ArrayList<>();

        // Stock1 일별 데이터 (종가 기반)
        testStockPrices.add(StockPrice.builder().stock(testStock1).baseDate(LocalDate.of(2022, 12, 28)).closePrice(100.0f).openPrice(100.0f).lowPrice(99.0f).highPrice(101.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock1).baseDate(LocalDate.of(2022, 12, 29)).closePrice(101.0f).openPrice(100.0f).lowPrice(99.0f).highPrice(102.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock1).baseDate(LocalDate.of(2022, 12, 30)).closePrice(102.0f).openPrice(101.0f).lowPrice(100.0f).highPrice(103.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock1).baseDate(LocalDate.of(2023, 1, 2)).closePrice(103.0f).openPrice(102.0f).lowPrice(101.0f).highPrice(104.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock1).baseDate(LocalDate.of(2023, 1, 3)).closePrice(105.0f).openPrice(103.0f).lowPrice(102.0f).highPrice(106.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock1).baseDate(LocalDate.of(2023, 1, 4)).closePrice(104.0f).openPrice(105.0f).lowPrice(103.0f).highPrice(106.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock1).baseDate(LocalDate.of(2023, 2, 1)).closePrice(108.0f).openPrice(106.0f).lowPrice(105.0f).highPrice(109.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock1).baseDate(LocalDate.of(2023, 2, 2)).closePrice(110.0f).openPrice(108.0f).lowPrice(107.0f).highPrice(111.0f).build());

        // Stock2 일별 데이터
        testStockPrices.add(StockPrice.builder().stock(testStock2).baseDate(LocalDate.of(2022, 12, 28)).closePrice(200.0f).openPrice(200.0f).lowPrice(198.0f).highPrice(202.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock2).baseDate(LocalDate.of(2022, 12, 29)).closePrice(202.0f).openPrice(200.0f).lowPrice(199.0f).highPrice(203.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock2).baseDate(LocalDate.of(2022, 12, 30)).closePrice(204.0f).openPrice(202.0f).lowPrice(201.0f).highPrice(205.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock2).baseDate(LocalDate.of(2023, 1, 2)).closePrice(206.0f).openPrice(204.0f).lowPrice(203.0f).highPrice(207.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock2).baseDate(LocalDate.of(2023, 1, 3)).closePrice(208.0f).openPrice(206.0f).lowPrice(205.0f).highPrice(209.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock2).baseDate(LocalDate.of(2023, 1, 4)).closePrice(207.0f).openPrice(208.0f).lowPrice(206.0f).highPrice(209.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock2).baseDate(LocalDate.of(2023, 2, 1)).closePrice(212.0f).openPrice(210.0f).lowPrice(209.0f).highPrice(213.0f).build());
        testStockPrices.add(StockPrice.builder().stock(testStock2).baseDate(LocalDate.of(2023, 2, 2)).closePrice(215.0f).openPrice(212.0f).lowPrice(211.0f).highPrice(216.0f).build());

        PortfolioBacktestRequestItemDTO item1 = PortfolioBacktestRequestItemDTO.builder()
                .stockId(1)
                .weight(0.6f)
                .build();

        PortfolioBacktestRequestItemDTO item2 = PortfolioBacktestRequestItemDTO.builder()
                .stockId(2)
                .weight(0.4f)
                .build();

        requestDTO = PortfolioBacktestRequestDTO.builder()
                .amount(1000000L)
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 2, 1))
                .portfolioBacktestRequestItemDTOList(Arrays.asList(item1, item2))
                .build();
    }

    @Test
    void calculatePortfolio_ValidRequest_ShouldReturnSuccessfulResult() {
        // Given
        when(stockRepository.findAllById(anyList()))
                .thenReturn(Arrays.asList(testStock1, testStock2));

        when(stockPriceRepository.findByStockInAndBaseDateBetween(anyList(), any(), any()))
                .thenReturn(testStockPrices);

        // When
        PortfolioBacktestResponseDTO result = portfolioBacktestService.calculatePortfolio(requestDTO);

        // Then
        assertNotNull(result);
        assertEquals(requestDTO, result.getPortfolioInput());
        assertNotNull(result.getPortfolioBacktestResponseItemDTOList());
        assertEquals(2, result.getPortfolioBacktestResponseItemDTOList().size());
        assertTrue(result.getTotalAmount() > 0);
        assertNotNull(result.getMonthlyRor());
        assertNotNull(result.getMonthlyAmount());

        // Verify interactions
        verify(stockRepository).findAllById(Arrays.asList(1, 2));
        verify(stockPriceRepository).findByStockInAndBaseDateBetween(anyList(), any(), any());
    }

    @Test
    void calculatePortfolio_StartDateAfterEndDate_ShouldThrowIllegalArgumentException() {
        // Given
        requestDTO = PortfolioBacktestRequestDTO.builder()
                .startDate(LocalDate.of(2023, 2, 1))
                .endDate(LocalDate.of(2023, 1, 1))
                .portfolioBacktestRequestItemDTOList(requestDTO.getPortfolioBacktestRequestItemDTOList())
                .amount(requestDTO.getAmount())
                .build();

        // When & Then
        InvalidDateRangeException exception = assertThrows(
                InvalidDateRangeException.class,
                () -> portfolioBacktestService.calculatePortfolio(requestDTO)
        );

        assertEquals("Start date must not be after end date.", exception.getMessage());

        verify(stockRepository, never()).findAllById(any());
        verify(stockPriceRepository, never()).findByStockInAndBaseDateBetween(anyList(), any(), any());
    }

    @Test
    void calculatePortfolio_StocksNotFound_ShouldThrowEntityNotFoundException() {
        // Given
        when(stockRepository.findAllById(anyList()))
                .thenReturn(Arrays.asList(testStock1));

        // When & Then
        EntityNotFoundException exception = assertThrows(
                EntityNotFoundException.class,
                () -> portfolioBacktestService.calculatePortfolio(requestDTO)
        );

        assertEquals("Some stocks not found", exception.getMessage());

        verify(stockRepository).findAllById(Arrays.asList(1, 2));
        verify(stockPriceRepository, never()).findByStockInAndBaseDateBetween(anyList(), any(), any());
    }

    @Test
    void calculatePortfolio_EmptyPortfolioItems_ShouldHandleGracefully() {
        // Given
        requestDTO = PortfolioBacktestRequestDTO.builder()
                .startDate(requestDTO.getStartDate())
                .endDate(requestDTO.getEndDate())
                .portfolioBacktestRequestItemDTOList(Collections.emptyList())
                .amount(requestDTO.getAmount())
                .build();

        when(stockRepository.findAllById(Collections.emptyList()))
                .thenReturn(Collections.emptyList());

        // When
        PortfolioBacktestResponseDTO result = portfolioBacktestService.calculatePortfolio(requestDTO);

        // Then
        assertNotNull(result);
        assertEquals(requestDTO, result.getPortfolioInput());
        assertNotNull(result.getPortfolioBacktestResponseItemDTOList());
        assertEquals(0, result.getPortfolioBacktestResponseItemDTOList().size());

        verify(stockRepository).findAllById(Collections.emptyList());
        verify(stockPriceRepository, never()).findByStockInAndBaseDateBetween(anyList(), any(), any());
    }

    @Test
    void calculatePortfolio_SingleStock_ShouldCalculateCorrectly() {
        // Given
        PortfolioBacktestRequestItemDTO singleItem = PortfolioBacktestRequestItemDTO.builder()
                .stockId(1)
                .weight(1.0f)
                .build();

        requestDTO = PortfolioBacktestRequestDTO.builder()
                .startDate(requestDTO.getStartDate())
                .endDate(requestDTO.getEndDate())
                .portfolioBacktestRequestItemDTOList(Arrays.asList(singleItem))
                .amount(requestDTO.getAmount())
                .build();

        when(stockRepository.findAllById(Arrays.asList(1)))
                .thenReturn(Arrays.asList(testStock1));

        // Stock1 데이터만 반환
        List<StockPrice> stock1Prices = testStockPrices.stream()
                .filter(sp -> sp.getStock().equals(testStock1))
                .toList();

        when(stockPriceRepository.findByStockInAndBaseDateBetween(anyList(), any(), any()))
                .thenReturn(stock1Prices);

        // When
        PortfolioBacktestResponseDTO result = portfolioBacktestService.calculatePortfolio(requestDTO);

        // Then
        assertNotNull(result);
        assertEquals(1, result.getPortfolioBacktestResponseItemDTOList().size());
        assertEquals("삼성전자", result.getPortfolioBacktestResponseItemDTOList().get(0).getName());

        verify(stockRepository).findAllById(Arrays.asList(1));
        verify(stockPriceRepository).findByStockInAndBaseDateBetween(anyList(), any(), any());
    }

    @Test
    void calculatePortfolio_DefaultFrequency_ShouldBehaveLikeDailyRebalancing() {
        // Given
        when(stockRepository.findAllById(anyList()))
                .thenReturn(Arrays.asList(testStock1, testStock2));
        when(stockPriceRepository.findByStockInAndBaseDateBetween(anyList(), any(), any()))
                .thenReturn(testStockPrices);

        PortfolioBacktestRequestDTO dailyRequest = PortfolioBacktestRequestDTO.builder()
                .amount(1000000L)
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 2, 1))
                .rebalanceFrequency(RebalanceFrequency.DAILY)
                .portfolioBacktestRequestItemDTOList(requestDTO.getPortfolioBacktestRequestItemDTOList())
                .build();

        // When
        PortfolioBacktestResponseDTO defaultResult = portfolioBacktestService.calculatePortfolio(requestDTO);
        PortfolioBacktestResponseDTO dailyResult = portfolioBacktestService.calculatePortfolio(dailyRequest);

        // Then
        assertEquals(defaultResult.getTotalRor(), dailyResult.getTotalRor(), 0.0001f);
        assertEquals(defaultResult.getTotalAmount(), dailyResult.getTotalAmount());
    }

    @Test
    void calculatePortfolio_ShouldUseLatestPriceBeforeStartDateForFirstReturn() {
        PortfolioBacktestRequestItemDTO singleItem = PortfolioBacktestRequestItemDTO.builder()
                .stockId(1)
                .weight(1.0f)
                .build();

        PortfolioBacktestRequestDTO singleStockRequest = PortfolioBacktestRequestDTO.builder()
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 1, 3))
                .amount(1_000_000L)
                .portfolioBacktestRequestItemDTOList(List.of(singleItem))
                .build();

        StockPrice beforeStart = StockPrice.builder()
                .stock(testStock1)
                .baseDate(LocalDate.of(2022, 12, 1))
                .closePrice(100.0f)
                .openPrice(100.0f)
                .lowPrice(99.0f)
                .highPrice(101.0f)
                .build();

        StockPrice day1 = StockPrice.builder()
                .stock(testStock1)
                .baseDate(LocalDate.of(2023, 1, 2))
                .closePrice(110.0f)
                .openPrice(108.0f)
                .lowPrice(107.0f)
                .highPrice(111.0f)
                .build();

        StockPrice day2 = StockPrice.builder()
                .stock(testStock1)
                .baseDate(LocalDate.of(2023, 1, 3))
                .closePrice(121.0f)
                .openPrice(120.0f)
                .lowPrice(119.0f)
                .highPrice(122.0f)
                .build();

        when(stockRepository.findAllById(List.of(1))).thenReturn(List.of(testStock1));
        when(stockPriceRepository.findLatestPricesBeforeStartDate(anyList(), any())).thenReturn(List.of(beforeStart));
        when(stockPriceRepository.findByStockInAndBaseDateBetween(anyList(), any(), any()))
                .thenReturn(List.of(day1, day2));

        PortfolioBacktestResponseDTO result = portfolioBacktestService.calculatePortfolio(singleStockRequest);

        assertNotNull(result);
        assertEquals(21.0f, result.getTotalRor(), 0.0001f);
    }

    @Test
    void calculatePortfolio_DuplicateStockIds_ShouldThrowBadRequestException() {
        PortfolioBacktestRequestItemDTO item1 = PortfolioBacktestRequestItemDTO.builder()
                .stockId(1)
                .weight(0.5f)
                .build();
        PortfolioBacktestRequestItemDTO item2 = PortfolioBacktestRequestItemDTO.builder()
                .stockId(1)
                .weight(0.5f)
                .build();

        PortfolioBacktestRequestDTO duplicateRequest = PortfolioBacktestRequestDTO.builder()
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 1, 31))
                .amount(1_000_000L)
                .portfolioBacktestRequestItemDTOList(List.of(item1, item2))
                .build();

        BadRequestException exception = assertThrows(
                BadRequestException.class,
                () -> portfolioBacktestService.calculatePortfolio(duplicateRequest)
        );

        assertEquals("Duplicate stockId is not allowed: 1", exception.getMessage());
        verify(stockRepository, never()).findAllById(anyList());
        verify(stockPriceRepository, never()).findByStockInAndBaseDateBetween(anyList(), any(), any());
    }
}
