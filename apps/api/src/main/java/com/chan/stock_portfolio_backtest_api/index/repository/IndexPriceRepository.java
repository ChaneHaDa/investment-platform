package com.chan.stock_portfolio_backtest_api.index.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.chan.stock_portfolio_backtest_api.index.domain.IndexPrice;

public interface IndexPriceRepository extends JpaRepository<IndexPrice, Integer> {
	List<IndexPrice> findAllByIndexInfo_Id(Integer stockId);

	@Query("SELECT ip FROM IndexPrice ip WHERE ip.indexInfo.id = :id " +
		"AND ip.baseDate >= :startDate " +
		"AND ip.baseDate <= :endDate")
	List<IndexPrice> findByIndexInfoIdAndDateRange(@Param("id") Integer id,
		@Param("startDate") LocalDate startDate,
		@Param("endDate") LocalDate endDate);

	@Query("SELECT ip FROM IndexPrice ip WHERE ip.indexInfo.id = :id")
	Page<IndexPrice> findByIndexInfoIdWithPaging(@Param("id") Integer id, Pageable pageable);

	@Query("SELECT ip FROM IndexPrice ip WHERE ip.indexInfo.id = :id " +
		"AND ip.baseDate >= :startDate " +
		"AND ip.baseDate <= :endDate")
	Page<IndexPrice> findByIndexInfoIdAndDateRangeWithPaging(@Param("id") Integer id,
		@Param("startDate") LocalDate startDate,
		@Param("endDate") LocalDate endDate,
		Pageable pageable);
}
