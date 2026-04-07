package com.chan.stock_portfolio_backtest_api.common.strategy;

import java.time.LocalDate;
import java.util.Map;

/**
 * 데이터 보간 전략 인터페이스
 * 주식 데이터의 누락된 값을 보간하는 전략을 정의합니다.
 */
public interface DataInterpolationStrategy {
    /**
     * 주어진 데이터의 누락된 값을 보간합니다.
     *
     * @param existingData 기존 데이터
     * @param startDate    시작 날짜
     * @param endDate      종료 날짜
     * @return 보간된 데이터
     */
    Map<LocalDate, Float> interpolate(Map<LocalDate, Float> existingData, LocalDate startDate, LocalDate endDate);
} 