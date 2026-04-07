package com.chan.stock_portfolio_backtest_api.stock.service;

import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import com.chan.stock_portfolio_backtest_api.stock.dto.StockResponseDTO;
import com.chan.stock_portfolio_backtest_api.stock.dto.StockSearchResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StockService {
    private final StockRepository stockRepository;

    public StockService(StockRepository stockRepository) {
        this.stockRepository = stockRepository;
    }

    public List<StockSearchResponseDTO> findStocksByQuery(String query) {
        List<StockSearchResponseDTO> stockSearchResponseDTOList = stockRepository.findByNameOrShortCodeContaining(query);

        if (stockSearchResponseDTOList.isEmpty()) {
            throw new EntityNotFoundException(String.format("Stock not found"));
        }

        return stockSearchResponseDTOList;
    }

    public StockResponseDTO findStockById(Integer id) {
        return StockResponseDTO.entityToDTO(stockRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Stock not found")));
    }

    public List<StockResponseDTO> findStocksByParams(String name, String shortCode, String isinCode) {
        if ((name == null || name.isEmpty()) && (shortCode == null || shortCode.isEmpty()) && (isinCode == null || isinCode.isEmpty())) {
            throw new IllegalArgumentException("At least one search parameter must be provided.");
        }

        List<Stock> stockList = List.of();

        if (name != null && !name.isEmpty()) {
            stockList = stockRepository.findAllByName(name);
        } else if (shortCode != null && !shortCode.isEmpty()) {
            stockList = stockRepository.findAllByShortCode(shortCode);
        } else if (isinCode != null && !isinCode.isEmpty()) {
            stockList = stockRepository.findAllByIsinCode(isinCode);
        }

        if (stockList.isEmpty()) {
            throw new EntityNotFoundException(String.format("Stock not found for name='%s', shortCode='%s', isinCode='%s'",
                    name, shortCode, isinCode));
        }

        return stockList.stream()
                .map(StockResponseDTO::entityToDTO)
                .toList();
    }
}
