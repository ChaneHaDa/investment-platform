package com.chan.stock_portfolio_backtest_api.common.constants;

public final class AppConstants {
    
    // 날짜 관련 상수
    public static final String DEFAULT_START_DATE = "2020-01-01";
    public static final String DEFAULT_END_DATE = "2022-12-31";
    
    // 백테스팅 관련 상수
    public static final float PERCENTAGE_CONVERSION_FACTOR = 100.0f;
    public static final float DEFAULT_MONTHLY_ROR = 0.0f;
    public static final int TRADING_DAYS_PER_YEAR = 252;
    public static final float DEFAULT_DAILY_ROR = 0.0f;
    
    // 에러 메시지
    public static final String DATE_VALIDATION_ERROR = "Start date must not be after end date.";
    public static final String PORTFOLIO_NOT_FOUND_ERROR = "Portfolio not found with id: ";
    public static final String STOCK_NOT_FOUND_ERROR = "Stock not found with id: ";
    public static final String ENTITY_NOT_FOUND_ERROR = "Portfolio Not Found";
    
    // 생성자 private으로 인스턴스화 방지
    private AppConstants() {
        throw new AssertionError("Constants class cannot be instantiated");
    }
}