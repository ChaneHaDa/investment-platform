package com.chan.stock_portfolio_backtest_api.common.exception;

import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.validation.FieldError;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.HashMap;
import java.util.Map;
import jakarta.validation.ConstraintViolationException;

@RestControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

    // 1. 유효성 검사 실패 (400)
    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex,
            HttpHeaders headers,
            HttpStatusCode status,
            WebRequest request
    ) {
        Map<String, String> errors = new HashMap<>();
        ex.getBindingResult().getAllErrors().forEach(error -> {
            String field = ((FieldError) error).getField();
            String message = error.getDefaultMessage();
            errors.put(field, message);
        });

        ResponseDTO<Map<String, String>> response = ResponseDTO.<Map<String, String>>builder()
                .status("error")
                .code("VALIDATION_FAILED")
                .message("입력값 검증 실패")
                .data(errors)
                .build();

        return ResponseEntity.badRequest().body(response);
    }

    // 2. 잘못된 요청 본문 (400)
    @Override
    protected ResponseEntity<Object> handleHttpMessageNotReadable(
            HttpMessageNotReadableException ex,
            HttpHeaders headers,
            HttpStatusCode status,
            WebRequest request
    ) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("INVALID_REQUEST")
                .message("잘못된 요청 형식입니다.")
                .build();

        return ResponseEntity.badRequest().body(response);
    }

    // 2-1. 누락된 요청 파라미터 (400)
    @Override
    protected ResponseEntity<Object> handleMissingServletRequestParameter(
            org.springframework.web.bind.MissingServletRequestParameterException ex,
            HttpHeaders headers,
            HttpStatusCode status,
            WebRequest request
    ) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("BAD_REQUEST")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.badRequest().body(response);
    }

    // 3. 인증 실패 (401)
    @ExceptionHandler(BadCredentialsException.class)
    public ResponseEntity<ResponseDTO<Void>> handleBadCredentials(BadCredentialsException ex) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("AUTH_FAILED")
                .message("아이디/비밀번호가 일치하지 않습니다.")
                .build();

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(response);
    }

    // 4. 엔티티 없음 (404)
    @ExceptionHandler(EntityNotFoundException.class)
    public ResponseEntity<ResponseDTO<Void>> handleEntityNotFound(EntityNotFoundException ex) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("ENTITY_NOT_FOUND")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
    }

    // 5. 기타 서버 오류 (500)
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ResponseDTO<Void>> handleAll(Exception ex) {
        logger.error("서버 오류 발생: ", ex);

        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("INTERNAL_ERROR")
                .message("서버 내부 오류가 발생했습니다.")
                .build();

        return ResponseEntity.internalServerError().body(response);
    }

    // 6. 인증 오류 (400)
    @ExceptionHandler(BadRequestException.class)
    public ResponseEntity<ResponseDTO<Void>> handleBadRequestException(Exception ex) {
        logger.error("인증 오류 발생: ", ex);

        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("BAD_REQUEST")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
    }
    
    // 7. 포트폴리오 없음 (404)
    @ExceptionHandler(PortfolioNotFoundException.class)
    public ResponseEntity<ResponseDTO<Void>> handlePortfolioNotFound(PortfolioNotFoundException ex) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("PORTFOLIO_NOT_FOUND")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
    }
    
    // 8. 주식 정보 없음 (404)
    @ExceptionHandler(StockNotFoundException.class)
    public ResponseEntity<ResponseDTO<Void>> handleStockNotFound(StockNotFoundException ex) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("STOCK_NOT_FOUND")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
    }
    
    // 9. 잘못된 날짜 범위 (400)
    @ExceptionHandler(InvalidDateRangeException.class)
    public ResponseEntity<ResponseDTO<Void>> handleInvalidDateRange(InvalidDateRangeException ex) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("INVALID_DATE_RANGE")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
    }
    
    // 10. 사용자 중복 (409)
    @ExceptionHandler(UserAlreadyExistsException.class)
    public ResponseEntity<ResponseDTO<Void>> handleUserAlreadyExists(UserAlreadyExistsException ex) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("USER_ALREADY_EXISTS")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.status(HttpStatus.CONFLICT).body(response);
    }
    
    // 11. 인가 오류 (401)
    @ExceptionHandler(UnauthorizedException.class)
    public ResponseEntity<ResponseDTO<Void>> handleUnauthorized(UnauthorizedException ex) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("UNAUTHORIZED")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(response);
    }

    // 12. 잘못된 파라미터/인자 (400)
    @ExceptionHandler({
            IllegalArgumentException.class,
            MethodArgumentTypeMismatchException.class,
            ConstraintViolationException.class
    })
    public ResponseEntity<ResponseDTO<Void>> handleInvalidArgument(Exception ex) {
        ResponseDTO<Void> response = ResponseDTO.<Void>builder()
                .status("error")
                .code("BAD_REQUEST")
                .message(ex.getMessage())
                .build();

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
    }
}
