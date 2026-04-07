package com.chan.stock_portfolio_backtest_api.common.strategy;

import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * 선형 보간 전략 구현체
 * 두 데이터 포인트 사이의 값을 선형적으로 보간합니다.
 */
@Component
public class LinearInterpolationStrategy implements DataInterpolationStrategy {
    private static final float DEFAULT_MONTHLY_ROR = 0.0f;

    @Override
    public Map<LocalDate, Float> interpolate(Map<LocalDate, Float> existingData, LocalDate startDate, LocalDate endDate) {
        Map<LocalDate, Float> interpolatedData = new TreeMap<>(existingData);
        List<LocalDate> dates = new ArrayList<>(existingData.keySet());

        if (dates.isEmpty()) {
            return interpolatedData;
        }

        // 시작일부터 종료일까지 모든 월에 대해 처리
        LocalDate current = startDate.withDayOfMonth(1);
        LocalDate endMonth = endDate.withDayOfMonth(1);

        while (!current.isAfter(endMonth)) {
            if (!interpolatedData.containsKey(current)) {
                // 이전 값과 다음 값을 찾음
                LocalDate prevDate = findPreviousDate(dates, current);
                LocalDate nextDate = findNextDate(dates, current);

                if (prevDate != null && nextDate != null) {
                    // 선형 보간 수행
                    float interpolatedValue = linearInterpolate(
                            existingData.get(prevDate),
                            existingData.get(nextDate),
                            prevDate,
                            nextDate,
                            current
                    );
                    interpolatedData.put(current, interpolatedValue);
                } else if (prevDate != null) {
                    // 이전 값만 있는 경우 이전 값 사용
                    interpolatedData.put(current, existingData.get(prevDate));
                } else if (nextDate != null) {
                    // 다음 값만 있는 경우 다음 값 사용
                    interpolatedData.put(current, existingData.get(nextDate));
                } else {
                    // 데이터가 없는 경우 0으로 설정
                    interpolatedData.put(current, DEFAULT_MONTHLY_ROR);
                }
            }
            current = current.plusMonths(1);
        }

        return interpolatedData;
    }

    private LocalDate findPreviousDate(List<LocalDate> dates, LocalDate target) {
        return dates.stream()
                .filter(date -> !date.isAfter(target))
                .max(LocalDate::compareTo)
                .orElse(null);
    }

    private LocalDate findNextDate(List<LocalDate> dates, LocalDate target) {
        return dates.stream()
                .filter(date -> date.isAfter(target))
                .min(LocalDate::compareTo)
                .orElse(null);
    }

    private float linearInterpolate(float prevValue, float nextValue,
                                    LocalDate prevDate, LocalDate nextDate,
                                    LocalDate targetDate) {
        long totalDays = ChronoUnit.DAYS.between(prevDate, nextDate);
        long targetDays = ChronoUnit.DAYS.between(prevDate, targetDate);

        float ratio = (float) targetDays / totalDays;
        return prevValue + (nextValue - prevValue) * ratio;
    }
} 