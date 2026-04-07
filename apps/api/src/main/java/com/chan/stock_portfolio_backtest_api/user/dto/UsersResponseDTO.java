package com.chan.stock_portfolio_backtest_api.user.dto;

import com.chan.stock_portfolio_backtest_api.user.domain.Users;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Builder
public class UsersResponseDTO {
    private final Integer id;
    private final String username;
    private final String email;
    private final String name;
    private final String phoneNumber;

    public static UsersResponseDTO fromEntity(Users users) {
        return UsersResponseDTO.builder()
                .id(users.getId())
                .username(users.getUsername())
                .email(users.getEmail())
                .name(users.getName())
                .phoneNumber(users.getPhoneNumber())
                .build();
    }
}
