package com.chan.stock_portfolio_backtest_api.common.exception;

public class StockNotFoundException extends RuntimeException {
    public StockNotFoundException() {
        super("Stock not found");
    }
    
    public StockNotFoundException(String message) {
        super(message);
    }
    
    public StockNotFoundException(Integer id) {
        super("Stock not found with id: " + id);
    }
}