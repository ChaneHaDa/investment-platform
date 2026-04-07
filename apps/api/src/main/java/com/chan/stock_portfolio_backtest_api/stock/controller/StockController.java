package com.chan.stock_portfolio_backtest_api.stock.controller;

import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;
import com.chan.stock_portfolio_backtest_api.stock.dto.StockResponseDTO;
import com.chan.stock_portfolio_backtest_api.stock.dto.StockSearchResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.stock.service.StockService;
import com.chan.stock_portfolio_backtest_api.common.util.ResponseUtil;
import jakarta.validation.constraints.NotNull;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/stocks")
@Validated
public class StockController {
    private final StockService stockService;

    public StockController(StockService stockService) {
        this.stockService = stockService;
    }

    @GetMapping
    public ResponseEntity<ResponseDTO<?>> getStocksByParams(
            @RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "shortCode", required = false) String shortCode,
            @RequestParam(value = "isinCode", required = false) String isinCode,
            @RequestParam(value = "q", required = false) String q
    ) {
        if (name == null && shortCode == null && isinCode == null && q == null) {
            throw new EntityNotFoundException("Stock을 찾을 수 없습니다.");
        }

        if (q != null) {
            List<StockSearchResponseDTO> stockSearchResponseDTOList = stockService.findStocksByQuery(q.trim());
            return ResponseEntity.ok(ResponseUtil.success(stockSearchResponseDTOList));
        } else {
            List<StockResponseDTO> stockResponseDTOList = stockService.findStocksByParams(name, shortCode, isinCode);
            return ResponseEntity.ok(ResponseUtil.success(stockResponseDTOList));
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<ResponseDTO<StockResponseDTO>> getStocksById(
            @PathVariable("id")
            @NotNull(message = "id는 필수입니다.") Integer id
    ) {
        StockResponseDTO stockResponseDTO = stockService.findStockById(id);
        return ResponseEntity.ok(ResponseUtil.success(stockResponseDTO));
    }
}
