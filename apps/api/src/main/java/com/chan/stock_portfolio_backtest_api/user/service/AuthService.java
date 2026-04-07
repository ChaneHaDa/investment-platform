package com.chan.stock_portfolio_backtest_api.user.service;

import com.chan.stock_portfolio_backtest_api.user.domain.Users;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.common.exception.UnauthorizedException;
import com.chan.stock_portfolio_backtest_api.user.repository.UsersRepository;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    private final UsersRepository usersRepository;

    public AuthService(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    public Users getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication == null || !authentication.isAuthenticated() || "anonymousUser".equals(authentication.getPrincipal())) {
            throw new UnauthorizedException("인증되지 않은 사용자입니다.");
        }
        String username = authentication.getName();
        if (username == null || username.isEmpty()) {
            throw new UnauthorizedException("사용자 이름이 유효하지 않습니다.");
        }

        Users user = usersRepository.findByUsername(authentication.getName());
        if (user == null) {
            throw new EntityNotFoundException("해당 사용자를 찾을 수 없습니다: " + authentication.getName());
        }

        return user;
    }

}
