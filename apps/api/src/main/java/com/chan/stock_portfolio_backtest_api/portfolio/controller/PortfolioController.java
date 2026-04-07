package com.chan.stock_portfolio_backtest_api.portfolio.controller;

import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestResponseDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioDetailResponseDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.service.PortfolioBacktestService;
import com.chan.stock_portfolio_backtest_api.portfolio.service.PortfolioService;
import com.chan.stock_portfolio_backtest_api.common.util.ResponseUtil;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/portfolios")
public class PortfolioController {
    private final PortfolioBacktestService portfolioBacktestService;
    private final PortfolioService portfolioService;

    public PortfolioController(PortfolioBacktestService portfolioBacktestService, PortfolioService portfolioService) {
        this.portfolioBacktestService = portfolioBacktestService;
        this.portfolioService = portfolioService;
    }

    @PostMapping("/backtest")
    public ResponseEntity<ResponseDTO<PortfolioBacktestResponseDTO>> createBacktest(
            @RequestBody @Valid PortfolioBacktestRequestDTO portfolioBacktestRequestDTO
    ) {
        PortfolioBacktestResponseDTO result = portfolioBacktestService.calculatePortfolio(portfolioBacktestRequestDTO);
        return ResponseEntity.ok(ResponseUtil.success(result));
    }

    @PostMapping
    public ResponseEntity<ResponseDTO<PortfolioResponseDTO>> savePortfolio(
            @RequestBody @Valid PortfolioRequestDTO portfolioRequestDTO
    ) {
        PortfolioResponseDTO savedPortfolio = portfolioService.createPortfolio(portfolioRequestDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(ResponseUtil.success(savedPortfolio));
    }

    @GetMapping
    public ResponseEntity<ResponseDTO<List<PortfolioResponseDTO>>> getPortfolioById() {
        List<PortfolioResponseDTO> portfolioResponseDTOList = portfolioService.findPortfolioByUser();
        return ResponseEntity.ok(ResponseUtil.success(portfolioResponseDTOList));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ResponseDTO<PortfolioDetailResponseDTO>> getPortfolioDetails(@PathVariable Integer id) {
        PortfolioDetailResponseDTO portfolioDetailResponseDTO = portfolioService.findPortfolioById(id);
        return ResponseEntity.ok(ResponseUtil.success(portfolioDetailResponseDTO));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ResponseDTO<String>> deletePortfolio(@PathVariable Integer id) {
        portfolioService.deletePortfolio(id);
        return ResponseEntity.ok(ResponseUtil.success("포트폴리오 삭제 성공"));
    }


    @PutMapping("/{id}")
    public ResponseEntity<ResponseDTO<PortfolioResponseDTO>> updatePortfolio(@PathVariable Integer id, @RequestBody @Valid PortfolioRequestDTO portfolioRequestDTO) {
        PortfolioResponseDTO portfolioResponseDTO = portfolioService.updatePortfolio(id, portfolioRequestDTO);
        return ResponseEntity.ok(ResponseUtil.success(portfolioResponseDTO));
    }

}
