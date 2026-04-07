package com.chan.stock_portfolio_backtest_api.user.service;

import java.time.Duration;

import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import com.chan.stock_portfolio_backtest_api.common.exception.BadRequestException;

@Service
public class RedisEmailVerificationService {

	private static final String TOKEN_KEY_PREFIX = "email:verification:token:";
	private static final String VERIFIED_KEY_PREFIX = "email:verification:verified:";
	private final StringRedisTemplate redis;

	public RedisEmailVerificationService(StringRedisTemplate redis) {
		this.redis = redis;
	}

	public void addToken(String email, String token, long minutes) {
		String key = TOKEN_KEY_PREFIX + email;
		redis.opsForValue().set(key, token, Duration.ofMinutes(minutes));
	}

	public boolean containsEmail(String email) {
		return Boolean.TRUE.equals(redis.hasKey(TOKEN_KEY_PREFIX + email));
	}

	public boolean isVerified(String email) {
		return Boolean.TRUE.equals(redis.hasKey(VERIFIED_KEY_PREFIX + email));
	}

	public void verify(String email, String token) {
		String tokenKey = TOKEN_KEY_PREFIX + email;
		String storedToken = redis.opsForValue().get(tokenKey);

		if (storedToken == null) {
			throw new BadRequestException("인증 요청이 없거나 토큰이 만료되었습니다.");
		}
		if (!storedToken.equals(token)) {
			throw new BadRequestException("유효하지 않은 인증 토큰입니다.");
		}

		redis.delete(tokenKey);

		String verifiedKey = VERIFIED_KEY_PREFIX + email;
		redis.opsForValue().set(verifiedKey, "true", Duration.ofMinutes(30));
	}
}
