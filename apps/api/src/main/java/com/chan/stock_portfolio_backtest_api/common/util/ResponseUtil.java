package com.chan.stock_portfolio_backtest_api.common.util;

import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;

public class ResponseUtil {
    
    private ResponseUtil() {
        // Utility class - private constructor to prevent instantiation
    }
    
    public static <T> ResponseDTO<T> success(T data) {
        return ResponseDTO.<T>builder()
                .status("success")
                .data(data)
                .build();
    }
    
    public static <T> ResponseDTO<T> success(T data, String message) {
        return ResponseDTO.<T>builder()
                .status("success")
                .data(data)
                .message(message)
                .build();
    }
    
    public static <T> ResponseDTO<T> error(String message) {
        return ResponseDTO.<T>builder()
                .status("error")
                .message(message)
                .build();
    }
}