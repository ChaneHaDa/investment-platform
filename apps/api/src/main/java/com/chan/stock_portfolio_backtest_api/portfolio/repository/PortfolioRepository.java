package com.chan.stock_portfolio_backtest_api.portfolio.repository;

import com.chan.stock_portfolio_backtest_api.portfolio.domain.Portfolio;
import com.chan.stock_portfolio_backtest_api.user.domain.Users;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioResponseDTO;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PortfolioRepository extends JpaRepository<Portfolio, Integer> {
    List<Portfolio> findAllByUser(Users user);
}
