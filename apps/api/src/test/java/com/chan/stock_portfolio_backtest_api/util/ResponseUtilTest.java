package com.chan.stock_portfolio_backtest_api.util;

import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.util.ResponseUtil;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ResponseUtilTest {

    @Test
    void success_WithDataOnly_ShouldCreateSuccessResponse() {
        // Given
        String testData = "test data";

        // When
        ResponseDTO<String> result = ResponseUtil.success(testData);

        // Then
        assertNotNull(result);
        assertEquals("success", result.getStatus());
        assertEquals(testData, result.getData());
        assertNull(result.getMessage());
    }

    @Test
    void success_WithDataAndMessage_ShouldCreateSuccessResponseWithMessage() {
        // Given
        String testData = "test data";
        String testMessage = "test message";

        // When
        ResponseDTO<String> result = ResponseUtil.success(testData, testMessage);

        // Then
        assertNotNull(result);
        assertEquals("success", result.getStatus());
        assertEquals(testData, result.getData());
        assertEquals(testMessage, result.getMessage());
    }

    @Test
    void success_WithNullData_ShouldCreateSuccessResponseWithNullData() {
        // Given
        String nullData = null;

        // When
        ResponseDTO<String> result = ResponseUtil.success(nullData);

        // Then
        assertNotNull(result);
        assertEquals("success", result.getStatus());
        assertNull(result.getData());
        assertNull(result.getMessage());
    }

    @Test
    void error_WithMessage_ShouldCreateErrorResponse() {
        // Given
        String errorMessage = "Error occurred";

        // When
        ResponseDTO<String> result = ResponseUtil.error(errorMessage);

        // Then
        assertNotNull(result);
        assertEquals("error", result.getStatus());
        assertEquals(errorMessage, result.getMessage());
        assertNull(result.getData());
    }

    @Test
    void error_WithNullMessage_ShouldCreateErrorResponseWithNullMessage() {
        // Given
        String nullMessage = null;

        // When
        ResponseDTO<String> result = ResponseUtil.error(nullMessage);

        // Then
        assertNotNull(result);
        assertEquals("error", result.getStatus());
        assertNull(result.getMessage());
        assertNull(result.getData());
    }
}