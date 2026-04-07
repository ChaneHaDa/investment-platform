package com.chan.stock_portfolio_backtest_api.user.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LoginRequestDTO {
    @NotBlank(message = "아이디는 필수 입력값입니다.")
    private String id;
    @NotBlank(message = "비밀번호는 필수 입력값입니다.")
    private String password;
}
