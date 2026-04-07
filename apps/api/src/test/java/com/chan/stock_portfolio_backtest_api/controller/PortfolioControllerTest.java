package com.chan.stock_portfolio_backtest_api.controller;

import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestItemDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioItemRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.*;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.portfolio.service.PortfolioBacktestService;
import com.chan.stock_portfolio_backtest_api.portfolio.service.PortfolioService;
import com.chan.stock_portfolio_backtest_api.portfolio.controller.PortfolioController;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import java.time.LocalDate;
import java.util.*;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(PortfolioController.class)
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class PortfolioControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private PortfolioBacktestService portfolioBacktestService;

    @MockBean
    private PortfolioService portfolioService;

    @Autowired
    private ObjectMapper objectMapper;

    private PortfolioBacktestRequestDTO backtestRequestDTO;
    private PortfolioBacktestResponseDTO backtestResponseDTO;
    private PortfolioRequestDTO portfolioRequestDTO;
    private PortfolioResponseDTO portfolioResponseDTO;
    private PortfolioDetailResponseDTO portfolioDetailResponseDTO;

    @BeforeEach
    void setUp() {
        // Backtest request DTO 설정
        PortfolioBacktestRequestItemDTO backtestItem1 = PortfolioBacktestRequestItemDTO.builder()
                .stockId(1)
                .weight(0.6f)
                .build();

        PortfolioBacktestRequestItemDTO backtestItem2 = PortfolioBacktestRequestItemDTO.builder()
                .stockId(2)
                .weight(0.4f)
                .build();

        backtestRequestDTO = PortfolioBacktestRequestDTO.builder()
                .amount(1000000L)
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 12, 31))
                .portfolioBacktestRequestItemDTOList(Arrays.asList(backtestItem1, backtestItem2))
                .build();

        // Backtest response DTO 설정
        PortfolioBacktestResponseItemDTO responseItem1 = PortfolioBacktestResponseItemDTO.builder()
                .name("삼성전자")
                .totalRor(15.5f)
                .monthlyRor(new TreeMap<>())
                .build();

        backtestResponseDTO = PortfolioBacktestResponseDTO.builder()
                .portfolioInput(backtestRequestDTO)
                .totalRor(12.5f)
                .totalAmount(1125000L)
                .monthlyRor(new TreeMap<>())
                .monthlyAmount(new TreeMap<>())
                .volatility(8.5f)
                .portfolioBacktestResponseItemDTOList(Arrays.asList(responseItem1))
                .build();

        // Portfolio request DTO 설정
        PortfolioItemRequestDTO portfolioItem1 = PortfolioItemRequestDTO.builder()
                .stockId(1)
                .weight(0.6f)
                .build();

        PortfolioItemRequestDTO portfolioItem2 = PortfolioItemRequestDTO.builder()
                .stockId(2)
                .weight(0.4f)
                .build();

        portfolioRequestDTO = PortfolioRequestDTO.builder()
                .name("테스트 포트폴리오")
                .description("테스트용 포트폴리오")
                .amount(1000000L)
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 12, 31))
                .portfolioItemRequestDTOList(Arrays.asList(portfolioItem1, portfolioItem2))
                .build();

        // Portfolio response DTO 설정
        portfolioResponseDTO = PortfolioResponseDTO.builder()
                .id(1)
                .name("테스트 포트폴리오")
                .description("테스트용 포트폴리오")
                .amount(1000000L)
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 12, 31))
                .build();

        // Portfolio detail response DTO 설정
        PortfolioDetailItemResponseDTO detailItem1 = PortfolioDetailItemResponseDTO.builder()
                .stockId(1)
                .name("삼성전자")
                .weight(0.6f)
                .build();

        portfolioDetailResponseDTO = PortfolioDetailResponseDTO.builder()
                .id(1)
                .name("테스트 포트폴리오")
                .description("테스트용 포트폴리오")
                .amount(1000000L)
                .startDate(LocalDate.of(2023, 1, 1))
                .endDate(LocalDate.of(2023, 12, 31))
                .items(Arrays.asList(detailItem1))
                .build();
    }

    @Test
    @WithMockUser
    void createBacktest_ValidRequest_ShouldReturnSuccessResponse() throws Exception {
        // Given
        when(portfolioBacktestService.calculatePortfolio(any(PortfolioBacktestRequestDTO.class)))
                .thenReturn(backtestResponseDTO);

        // When & Then
        mockMvc.perform(post("/api/v1/portfolios/backtest")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(backtestRequestDTO)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value("success"))
                .andExpect(jsonPath("$.data").isNotEmpty())
                .andExpect(jsonPath("$.data.totalRor").value(12.5))
                .andExpect(jsonPath("$.data.totalAmount").value(1125000));

        // Verify service call
        verify(portfolioBacktestService).calculatePortfolio(any(PortfolioBacktestRequestDTO.class));
    }

    @Test
    @WithMockUser
    void savePortfolio_ValidRequest_ShouldReturnSuccessResponse() throws Exception {
        // Given
        when(portfolioService.createPortfolio(any(PortfolioRequestDTO.class)))
                .thenReturn(portfolioResponseDTO);

        // When & Then
        mockMvc.perform(post("/api/v1/portfolios")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(portfolioRequestDTO)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value("success"))
                .andExpect(jsonPath("$.data").isNotEmpty())
                .andExpect(jsonPath("$.data.id").value(1))
                .andExpect(jsonPath("$.data.name").value("테스트 포트폴리오"));

        // Verify service call
        verify(portfolioService).createPortfolio(any(PortfolioRequestDTO.class));
    }

    @Test
    @WithMockUser
    void getPortfolioById_ValidUser_ShouldReturnPortfolioList() throws Exception {
        // Given
        List<PortfolioResponseDTO> portfolioList = Arrays.asList(portfolioResponseDTO);
        when(portfolioService.findPortfolioByUser()).thenReturn(portfolioList);

        // When & Then
        mockMvc.perform(get("/api/v1/portfolios"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value("success"))
                .andExpect(jsonPath("$.data").isArray())
                .andExpect(jsonPath("$.data[0].id").value(1))
                .andExpect(jsonPath("$.data[0].name").value("테스트 포트폴리오"));

        // Verify service call
        verify(portfolioService).findPortfolioByUser();
    }

    @Test
    @WithMockUser
    void getPortfolioDetails_ValidId_ShouldReturnPortfolioDetail() throws Exception {
        // Given
        when(portfolioService.findPortfolioById(1)).thenReturn(portfolioDetailResponseDTO);

        // When & Then
        mockMvc.perform(get("/api/v1/portfolios/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value("success"))
                .andExpect(jsonPath("$.data").isNotEmpty())
                .andExpect(jsonPath("$.data.id").value(1))
                .andExpect(jsonPath("$.data.name").value("테스트 포트폴리오"))
                .andExpect(jsonPath("$.data.portfolioDetailItemResponseDTOList").isArray());

        // Verify service call
        verify(portfolioService).findPortfolioById(1);
    }

    @Test
    @WithMockUser
    void deletePortfolio_ValidId_ShouldReturnSuccessResponse() throws Exception {
        // Given
        doNothing().when(portfolioService).deletePortfolio(1);

        // When & Then
        mockMvc.perform(delete("/api/v1/portfolios/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value("success"))
                .andExpect(jsonPath("$.data").value("포트폴리오 삭제 성공"));

        // Verify service call
        verify(portfolioService).deletePortfolio(1);
    }

    @Test
    @WithMockUser
    void updatePortfolio_ValidRequest_ShouldReturnSuccessResponse() throws Exception {
        // Given
        when(portfolioService.updatePortfolio(eq(1), any(PortfolioRequestDTO.class)))
                .thenReturn(portfolioResponseDTO);

        // When & Then
        mockMvc.perform(put("/api/v1/portfolios/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(portfolioRequestDTO)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value("success"))
                .andExpect(jsonPath("$.data").isNotEmpty())
                .andExpect(jsonPath("$.data.id").value(1))
                .andExpect(jsonPath("$.data.name").value("테스트 포트폴리오"));

        // Verify service call
        verify(portfolioService).updatePortfolio(eq(1), any(PortfolioRequestDTO.class));
    }

    @Test
    @WithMockUser
    void createBacktest_ServiceThrowsException_ShouldReturnErrorResponse() throws Exception {
        // Given
        when(portfolioBacktestService.calculatePortfolio(any(PortfolioBacktestRequestDTO.class)))
                .thenThrow(new IllegalArgumentException("Start date must not be after end date."));

        // When & Then
        mockMvc.perform(post("/api/v1/portfolios/backtest")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(backtestRequestDTO)))
                .andExpect(status().isBadRequest());

        // Verify service call
        verify(portfolioBacktestService).calculatePortfolio(any(PortfolioBacktestRequestDTO.class));
    }

    @Test
    @WithMockUser
    void getPortfolioDetails_PortfolioNotFound_ShouldReturnNotFound() throws Exception {
        // Given
        when(portfolioService.findPortfolioById(999))
                .thenThrow(new EntityNotFoundException("Portfolio not found"));

        // When & Then
        mockMvc.perform(get("/api/v1/portfolios/999"))
                .andExpect(status().isNotFound());

        // Verify service call
        verify(portfolioService).findPortfolioById(999);
    }

    @Test
    @WithMockUser
    void savePortfolio_InvalidRequest_ShouldReturnBadRequest() throws Exception {
        // Given
        PortfolioRequestDTO invalidRequest = PortfolioRequestDTO.builder()
                .name("") // Empty name should trigger validation error
                .build();

        // When & Then
        mockMvc.perform(post("/api/v1/portfolios")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(invalidRequest)))
                .andExpect(status().isBadRequest());

        // Verify service is not called due to validation failure
        verify(portfolioService, never()).createPortfolio(any());
    }

    @Test
    @WithMockUser
    void updatePortfolio_InvalidRequest_ShouldReturnBadRequest() throws Exception {
        // Given
        PortfolioRequestDTO invalidRequest = PortfolioRequestDTO.builder()
                .name("") // Empty name should trigger validation error
                .build();

        // When & Then
        mockMvc.perform(put("/api/v1/portfolios/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(invalidRequest)))
                .andExpect(status().isBadRequest());

        // Verify service is not called due to validation failure
        verify(portfolioService, never()).updatePortfolio(any(), any());
    }
}