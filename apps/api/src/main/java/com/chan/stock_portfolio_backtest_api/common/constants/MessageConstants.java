package com.chan.stock_portfolio_backtest_api.common.constants;

public class MessageConstants {
    
    private MessageConstants() {
        // Constants class - prevent instantiation
    }
    
    // Success Messages
    public static final String PORTFOLIO_DELETED_SUCCESS = "포트폴리오 삭제 성공";
    public static final String PORTFOLIO_CREATED_SUCCESS = "포트폴리오 생성 성공";
    public static final String PORTFOLIO_UPDATED_SUCCESS = "포트폴리오 수정 성공";
    
    // Error Messages
    public static final String PORTFOLIO_NOT_FOUND = "Portfolio not found";
    public static final String STOCKS_NOT_FOUND = "Some stocks not found";
    public static final String INVALID_DATE_RANGE = "Start date must not be after end date";
    public static final String USER_NOT_FOUND = "User not found";
    
    // Validation Messages
    public static final String INVALID_PORTFOLIO_INPUT = "Invalid portfolio input";
    public static final String INVALID_STOCK_INPUT = "Invalid stock input";
}