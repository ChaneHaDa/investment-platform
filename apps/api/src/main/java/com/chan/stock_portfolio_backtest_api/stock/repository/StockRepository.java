package com.chan.stock_portfolio_backtest_api.stock.repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import com.chan.stock_portfolio_backtest_api.stock.dto.StockSearchResponseDTO;

public interface StockRepository extends JpaRepository<Stock, Integer> {
	@Query("SELECT new com.chan.stock_portfolio_backtest_api.stock.dto.StockSearchResponseDTO(s.id, s.name, s.shortCode, s.marketCategory) FROM Stock s WHERE s.name LIKE %:query% OR s.shortCode LIKE %:query%")
	List<StockSearchResponseDTO> findByNameOrShortCodeContaining(@Param("query") String query);

	Stock findByName(String query);

	List<Stock> findAllByName(String name);

	List<Stock> findAllByShortCode(String shortCode);

	List<Stock> findAllByIsinCode(String isinCode);

	@Query("SELECT MIN(sp.baseDate) FROM StockPrice sp WHERE sp.stock.id = :stockId")
	Optional<LocalDate> findFirstTradingDate(@Param("stockId") Integer stockId);

	@Query("SELECT MAX(sp.baseDate) FROM StockPrice sp WHERE sp.stock.id = :stockId")
	Optional<LocalDate> findLastTradingDate(@Param("stockId") Integer stockId);

	@Query("SELECT MIN(sp.baseDate), MAX(sp.baseDate) FROM StockPrice sp WHERE sp.stock.id = :stockId")
	Object[] findTradingDateRange(@Param("stockId") Integer stockId);
}