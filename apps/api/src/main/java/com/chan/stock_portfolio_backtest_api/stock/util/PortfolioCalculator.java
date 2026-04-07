package com.chan.stock_portfolio_backtest_api.stock.util;

import com.chan.stock_portfolio_backtest_api.common.constants.AppConstants;
import com.chan.stock_portfolio_backtest_api.stock.domain.StockPrice;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.*;

public class PortfolioCalculator {

    /**
     * 주어진 월별 수익률 데이터를 복리로 누적하여 전체 수익률(백분율)을 계산합니다.
     *
     * @param monthlyRorMap 각 월별 수익률 (key: 시작일(yyyy-MM-01), value: 월 수익률(%))
     * @param startMonth    계산 시작 월 (해당 월의 1일)
     * @param endMonth      계산 종료 월 (해당 월의 1일)
     * @return 누적 수익률 (백분율, 예: 46.28)
     */
    public static float calculateCompoundRor(Map<LocalDate, Float> monthlyRorMap, LocalDate startMonth, LocalDate endMonth) {
        double compoundFactor = 1.0;
        LocalDate current = startMonth;
        while (!current.isAfter(endMonth)) {
            float monthlyRor = monthlyRorMap.getOrDefault(current, 0f);
            compoundFactor *= (1 + monthlyRor / 100.0);
            current = current.plusMonths(1);
        }
        // 결과를 백분율로 변환
        return (float) ((compoundFactor - 1.0) * 100);
    }

    /**
     * 각 주식의 월별 수익률(가중치 적용)을 포트폴리오의 월별 수익률에 합산합니다.
     *
     * @param portfolioRor 포트폴리오 전체 월별 수익률을 저장할 Map (key: 월 시작일, value: 수익률(%))
     * @param stockRor     개별 주식의 월별 수익률 Map
     * @param weight       해당 주식의 포트폴리오 내 투자 비중
     * @param startMonth   계산 시작 월 (해당 월의 1일)
     * @param endMonth     계산 종료 월 (해당 월의 1일)
     */
    public static void mergeStockIntoPortfolioRor(Map<LocalDate, Float> portfolioRor,
                                                  Map<LocalDate, Float> stockRor,
                                                  float weight,
                                                  LocalDate startMonth,
                                                  LocalDate endMonth) {
        LocalDate current = startMonth;
        while (!current.isAfter(endMonth)) {
            float monthlyRor = stockRor.getOrDefault(current, 0f);
            portfolioRor.merge(current, weight * monthlyRor, Float::sum);
            current = current.plusMonths(1);
        }
    }


    /**
     * 주어진 월별 수익률 데이터를 이용해 표준편차(변동성)를 계산합니다.
     * 월별 수익률은 백분율로 저장되어 있다고 가정합니다.
     *
     * @param monthlyRorMap 월별 수익률을 담은 Map (키: LocalDate, 값: 월별 수익률(%))
     * @return 월별 수익률의 표준편차 (변동성, 백분율 단위)
     */
    public static float calculateVolatility(Map<LocalDate, Float> monthlyRorMap) {
        Collection<Float> returns = monthlyRorMap.values();
        int n = returns.size();
        if (n == 0) {
            return 0f;
        }

        // 평균 수익률 계산
        double sum = returns.stream().mapToDouble(r -> r).sum();
        double mean = sum / n;

        // 분산 계산
        double variance = returns.stream()
                .mapToDouble(r -> Math.pow(r - mean, 2))
                .sum() / n;

        double stdDev = Math.sqrt(variance);

        // 결과는 월별 변동성이며, 필요한 경우 연율화: stdDev * Math.sqrt(12)
        return (float) stdDev;
    }

    /**
     * 연평균 수익률을 기반으로 지정된 기간의 월별 수익률을 생성합니다.
     *
     * @param annualReturnRate 연평균 수익률 (백분율, 예: 10.5 = 10.5%)
     * @param startDate 시작 날짜
     * @param endDate 종료 날짜
     * @return 월별 수익률을 담은 Map (키: 월 시작일, 값: 월별 수익률(%))
     */
    public static Map<LocalDate, Float> generateMonthlyRorFromAnnual(float annualReturnRate,
                                                                    LocalDate startDate,
                                                                    LocalDate endDate) {
        Map<LocalDate, Float> monthlyRorMap = new TreeMap<>();

        // 연평균 수익률을 월평균 수익률로 변환
        // 공식: monthlyRate = (1 + annualRate/100)^(1/12) - 1
        double annualRateDecimal = annualReturnRate / 100.0;
        double monthlyRateDecimal = Math.pow(1 + annualRateDecimal, 1.0/12.0) - 1;
        float monthlyRatePercent = (float) (monthlyRateDecimal * 100);

        // 시작월부터 종료월까지 모든 월에 동일한 수익률 적용
        LocalDate currentMonth = startDate.withDayOfMonth(1);
        LocalDate endMonth = endDate.withDayOfMonth(1);

        while (!currentMonth.isAfter(endMonth)) {
            monthlyRorMap.put(currentMonth, monthlyRatePercent);
            currentMonth = currentMonth.plusMonths(1);
        }

        return monthlyRorMap;
    }

    /**
     * 종가 기반 일별 수익률을 계산합니다.
     * 수익률 = (close[t] / close[t-1] - 1) * 100
     *
     * @param stockPrices baseDate 오름차순 정렬된 StockPrice 리스트
     * @return 일별 수익률 Map (키: 날짜, 값: 수익률(%))
     */
    public static Map<LocalDate, Float> calculateDailyRorFromPrices(List<StockPrice> stockPrices) {
        Map<LocalDate, Float> dailyRor = new TreeMap<>();
        for (int i = 1; i < stockPrices.size(); i++) {
            float prevClose = stockPrices.get(i - 1).getClosePrice();
            float currClose = stockPrices.get(i).getClosePrice();
            if (prevClose != 0) {
                float ror = (currClose / prevClose - 1) * AppConstants.PERCENTAGE_CONVERSION_FACTOR;
                dailyRor.put(stockPrices.get(i).getBaseDate(), ror);
            }
        }
        return dailyRor;
    }

    /**
     * 일별 수익률을 월별로 집계합니다 (월 내 복리).
     *
     * @param dailyRor 일별 수익률 Map (키: 날짜, 값: 수익률(%))
     * @return 월별 수익률 Map (키: 월 시작일, 값: 월별 복리 수익률(%))
     */
    public static Map<LocalDate, Float> aggregateDailyToMonthlyRor(Map<LocalDate, Float> dailyRor) {
        Map<LocalDate, Float> monthlyRor = new TreeMap<>();
        Map<LocalDate, Double> monthlyCompoundFactor = new TreeMap<>();

        for (Map.Entry<LocalDate, Float> entry : dailyRor.entrySet()) {
            LocalDate monthKey = entry.getKey().withDayOfMonth(1);
            double factor = monthlyCompoundFactor.getOrDefault(monthKey, 1.0);
            factor *= (1 + entry.getValue() / AppConstants.PERCENTAGE_CONVERSION_FACTOR);
            monthlyCompoundFactor.put(monthKey, factor);
        }

        for (Map.Entry<LocalDate, Double> entry : monthlyCompoundFactor.entrySet()) {
            monthlyRor.put(entry.getKey(), (float) ((entry.getValue() - 1.0) * AppConstants.PERCENTAGE_CONVERSION_FACTOR));
        }
        return monthlyRor;
    }

    /**
     * 일별 수익률에서 전체 복리 수익률을 계산합니다.
     *
     * @param dailyRor 일별 수익률 Map (키: 날짜, 값: 수익률(%))
     * @return 전체 복리 수익률 (백분율)
     */
    public static float calculateCompoundRorFromDaily(Map<LocalDate, Float> dailyRor) {
        double compoundFactor = 1.0;
        for (float ror : dailyRor.values()) {
            compoundFactor *= (1 + ror / AppConstants.PERCENTAGE_CONVERSION_FACTOR);
        }
        return (float) ((compoundFactor - 1.0) * AppConstants.PERCENTAGE_CONVERSION_FACTOR);
    }

    /**
     * 개별 주식의 일별 수익률을 가중치 적용하여 포트폴리오 일별 수익률에 합산합니다.
     *
     * @param portfolioMap 포트폴리오 일별 수익률 Map (수정됨)
     * @param stockMap     개별 주식의 일별 수익률 Map
     * @param weight       투자 비중
     */
    public static void mergeStockDailyIntoPortfolioDailyRor(Map<LocalDate, Float> portfolioMap,
                                                            Map<LocalDate, Float> stockMap,
                                                            float weight) {
        for (Map.Entry<LocalDate, Float> entry : stockMap.entrySet()) {
            portfolioMap.merge(entry.getKey(), weight * entry.getValue(), Float::sum);
        }
    }

    /**
     * 일별 수익률의 표준편차를 계산하고 월별 변동성으로 환산합니다.
     * 월별 환산: stddev * sqrt(21)
     *
     * @param dailyRor 일별 수익률 Map (키: 날짜, 값: 수익률(%))
     * @return 월별 환산 변동성 (백분율)
     */
    public static float calculateDailyVolatility(Map<LocalDate, Float> dailyRor) {
        Collection<Float> returns = dailyRor.values();
        int n = returns.size();
        if (n == 0) {
            return 0f;
        }

        double sum = returns.stream().mapToDouble(r -> r).sum();
        double mean = sum / n;

        double variance = returns.stream()
                .mapToDouble(r -> Math.pow(r - mean, 2))
                .sum() / n;

        double dailyStdDev = Math.sqrt(variance);
        return (float) (dailyStdDev * Math.sqrt(21));
    }

    /**
     * 연율을 기반으로 일별 수익률을 생성합니다 (주말 제외, 252거래일 기준).
     *
     * @param annualRate 연평균 수익률 (백분율, 예: 10.0 = 10%)
     * @param startDate  시작 날짜
     * @param endDate    종료 날짜
     * @return 일별 수익률 Map (키: 평일 날짜, 값: 수익률(%))
     */
    public static Map<LocalDate, Float> generateDailyRorFromAnnual(float annualRate,
                                                                   LocalDate startDate,
                                                                   LocalDate endDate) {
        Map<LocalDate, Float> dailyRor = new TreeMap<>();
        double annualRateDecimal = annualRate / AppConstants.PERCENTAGE_CONVERSION_FACTOR;
        double dailyRateDecimal = Math.pow(1 + annualRateDecimal, 1.0 / AppConstants.TRADING_DAYS_PER_YEAR) - 1;
        float dailyRatePercent = (float) (dailyRateDecimal * AppConstants.PERCENTAGE_CONVERSION_FACTOR);

        LocalDate current = startDate;
        while (!current.isAfter(endDate)) {
            DayOfWeek dow = current.getDayOfWeek();
            if (dow != DayOfWeek.SATURDAY && dow != DayOfWeek.SUNDAY) {
                dailyRor.put(current, dailyRatePercent);
            }
            current = current.plusDays(1);
        }
        return dailyRor;
    }
}
