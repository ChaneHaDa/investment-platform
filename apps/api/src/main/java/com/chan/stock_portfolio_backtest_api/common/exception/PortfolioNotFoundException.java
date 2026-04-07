package com.chan.stock_portfolio_backtest_api.common.exception;

public class PortfolioNotFoundException extends RuntimeException {
    public PortfolioNotFoundException() {
        super("Portfolio not found");
    }
    
    public PortfolioNotFoundException(String message) {
        super(message);
    }
    
    public PortfolioNotFoundException(Integer id) {
        super("Portfolio not found with id: " + id);
    }
}