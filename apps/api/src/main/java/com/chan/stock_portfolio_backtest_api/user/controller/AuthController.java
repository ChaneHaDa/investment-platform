package com.chan.stock_portfolio_backtest_api.user.controller;

import com.chan.stock_portfolio_backtest_api.user.dto.LoginRequestDTO;
import com.chan.stock_portfolio_backtest_api.user.dto.UsersRequestDTO;
import com.chan.stock_portfolio_backtest_api.common.dto.ResponseDTO;
import com.chan.stock_portfolio_backtest_api.user.dto.UsersResponseDTO;
import com.chan.stock_portfolio_backtest_api.user.service.UsersService;
import com.chan.stock_portfolio_backtest_api.common.util.JWTUtil;
import com.chan.stock_portfolio_backtest_api.common.util.ResponseUtil;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/auth")
@Validated
public class AuthController {
    private final UsersService usersService;
    private final AuthenticationManager authenticationManager;

    public AuthController(UsersService usersService, AuthenticationManager authenticationManager) {
        this.usersService = usersService;
        this.authenticationManager = authenticationManager;
    }

    @PostMapping("/register")
    public ResponseEntity<ResponseDTO<UsersResponseDTO>> registerUser(
            @RequestBody @Valid UsersRequestDTO usersRequestDTO
    ) {
        UsersResponseDTO createdUser = usersService.createUser(usersRequestDTO);

        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdUser.getId())
                .toUri();

        return ResponseEntity
                .created(location)
                .body(ResponseUtil.success(createdUser, "회원가입 성공"));
    }

    @PostMapping("/login")
    public ResponseEntity<ResponseDTO<Map<String, String>>> loginUser(@RequestBody @Valid LoginRequestDTO loginRequestDTO) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        loginRequestDTO.getId(),
                        loginRequestDTO.getPassword()
                )
        );

        SecurityContextHolder.getContext().setAuthentication(authentication);
        String token = JWTUtil.createToken(authentication.getName(), authentication.getAuthorities());

        return ResponseEntity.ok()
                .header(HttpHeaders.AUTHORIZATION, "Bearer " + token)
                .body(ResponseUtil.success(Map.of("accessToken", token), "로그인 성공"));
    }

    @GetMapping("/check-username")
    public ResponseEntity<ResponseDTO<Map<String, Object>>> checkUsername(
            @RequestParam("username")
            @NotBlank(message = "아이디는 필수 입력값입니다.") String username
    ) {
        boolean isAvailable = usersService.isUsernameAvailable(username);

        if (isAvailable) {
            return ResponseEntity.ok(ResponseUtil.success(
                    Map.of("username", username, "available", true), 
                    "The username is available."));
        } else {
            return ResponseEntity.status(HttpStatus.CONFLICT)
                    .body(ResponseDTO.<Map<String, Object>>builder()
                            .status("error")
                            .code("USERNAME_TAKEN")
                            .message("The username is already taken.")
                            .build());
        }
    }

    @GetMapping("/check-email")
    public ResponseEntity<ResponseDTO<Map<String, Object>>> checkEmail(
            @RequestParam("email")
            @NotBlank(message = "이메일는 필수 입력값입니다.") String email) {
        boolean isAvailable = usersService.isEmailAvailable(email);
        if (isAvailable) {
            return ResponseEntity.ok(ResponseUtil.success(
                    Map.of("email", email, "available", true), 
                    "The email is available."));
        } else {
            return ResponseEntity.status(HttpStatus.CONFLICT)
                    .body(ResponseDTO.<Map<String, Object>>builder()
                            .status("error")
                            .code("EMAIL_TAKEN")
                            .message("The email is already taken.")
                            .build());
        }
    }

    @GetMapping("/initiate-email")
    public ResponseEntity<ResponseDTO<String>> initiateEmail(
            @RequestParam("email") @NotBlank(message = "이메일은 필수 입력값입니다.") String email) {
        usersService.requestEmailVerification(email);
        return ResponseEntity.ok(ResponseUtil.success(email, "인증 이메일 발송이 완료되었습니다."));
    }

    @GetMapping("/verify-email")
    public ResponseEntity<ResponseDTO<Map<String, Object>>> verifyEmail(
            @RequestParam("email") @NotBlank(message = "이메일은 필수 입력값입니다.") String email,
            @RequestParam("token") @NotBlank(message = "토큰은 필수 입력값입니다.") String token) {
        usersService.emailValidation(email, token);
        return ResponseEntity.ok(ResponseUtil.success(
                Map.of("email", email, "verified", true), 
                "The email is validated."));
    }

}
