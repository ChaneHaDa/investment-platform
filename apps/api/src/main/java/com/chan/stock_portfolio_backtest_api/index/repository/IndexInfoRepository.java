package com.chan.stock_portfolio_backtest_api.index.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.chan.stock_portfolio_backtest_api.index.domain.IndexInfo;
import com.chan.stock_portfolio_backtest_api.index.dto.IndexSearchResponseDTO;

public interface IndexInfoRepository extends JpaRepository<IndexInfo, Integer> {
	Optional<IndexInfo> findByName(String name);

	@Query("SELECT new com.chan.stock_portfolio_backtest_api.index.dto.IndexSearchResponseDTO(i.id, i.name, i.category) FROM IndexInfo i WHERE i.name LIKE %:query% OR i.category LIKE %:query%")
	List<IndexSearchResponseDTO> findByNameOrCategoryContaining(@Param("query") String query);

	List<IndexInfo> findAllByName(String name);

	List<IndexInfo> findAllByCategory(String category);
}
