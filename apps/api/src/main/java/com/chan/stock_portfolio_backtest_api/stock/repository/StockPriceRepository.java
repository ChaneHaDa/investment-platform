package com.chan.stock_portfolio_backtest_api.stock.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import com.chan.stock_portfolio_backtest_api.stock.domain.StockPrice;

public interface StockPriceRepository extends JpaRepository<StockPrice, Integer> {
	@Query("SELECT sp FROM StockPrice sp " +
		"WHERE sp.stock IN :stocks " +
		"AND sp.baseDate = (" +
		"SELECT MAX(sp2.baseDate) FROM StockPrice sp2 " +
		"WHERE sp2.stock = sp.stock AND sp2.baseDate < :startDate" +
		")")
	List<StockPrice> findLatestPricesBeforeStartDate(
		@Param("stocks") List<Stock> stocks,
		@Param("startDate") LocalDate startDate);

	@Query("SELECT sp FROM StockPrice sp WHERE sp.stock IN :stocks AND sp.baseDate BETWEEN :startDate AND :endDate ORDER BY sp.stock.id, sp.baseDate")
	List<StockPrice> findByStockInAndBaseDateBetween(
		@Param("stocks") List<Stock> stocks,
		@Param("startDate") LocalDate startDate,
		@Param("endDate") LocalDate endDate);

	@Query("SELECT sp FROM StockPrice sp WHERE sp.stock.id = :id")
	Page<StockPrice> findByStockIdWithPaging(@Param("id") Integer id, Pageable pageable);

	@Query("SELECT sp FROM StockPrice sp WHERE sp.stock.id = :id " +
		"AND sp.baseDate >= :startDate " +
		"AND sp.baseDate <= :endDate")
	Page<StockPrice> findByStockIdAndDateRangeWithPaging(@Param("id") Integer id,
		@Param("startDate") LocalDate startDate,
		@Param("endDate") LocalDate endDate,
		Pageable pageable);
}
