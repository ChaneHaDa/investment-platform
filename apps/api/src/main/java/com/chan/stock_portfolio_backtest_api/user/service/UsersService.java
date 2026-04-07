package com.chan.stock_portfolio_backtest_api.user.service;

import java.time.LocalDateTime;
import java.util.UUID;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chan.stock_portfolio_backtest_api.common.constants.Role;
import com.chan.stock_portfolio_backtest_api.user.domain.Users;
import com.chan.stock_portfolio_backtest_api.user.dto.UsersRequestDTO;
import com.chan.stock_portfolio_backtest_api.user.dto.UsersResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.BadRequestException;
import com.chan.stock_portfolio_backtest_api.common.exception.UserAlreadyExistsException;
import com.chan.stock_portfolio_backtest_api.user.repository.UsersRepository;

@Service
public class UsersService {
	private final UsersRepository usersRepository;
	private final PasswordEncoder passwordEncoder;
	private final EmailService emailService;
	private final RedisEmailVerificationService verificationService;

	public UsersService(UsersRepository usersRepository, PasswordEncoder passwordEncoder, EmailService emailService,
		RedisEmailVerificationService verificationService) {
		this.usersRepository = usersRepository;
		this.passwordEncoder = passwordEncoder;
		this.emailService = emailService;
		this.verificationService = verificationService;
	}

	@Transactional
	public UsersResponseDTO createUser(UsersRequestDTO dto) {
		if (usersRepository.existsByUsername(dto.getUsername())) {
			throw new UserAlreadyExistsException("이미 사용 중인 아이디입니다.");
		}
		if (usersRepository.existsByEmail(dto.getEmail())) {
			throw new UserAlreadyExistsException("이미 등록된 이메일입니다.");
		}
		if (!verificationService.isVerified(dto.getEmail())) {
			throw new BadRequestException("이메일 인증 이전 입니다.");
		}

		String encodedPassword = passwordEncoder.encode(dto.getPassword());

		Users user = Users.builder()
			.username(dto.getUsername())
			.password(encodedPassword)
			.email(dto.getEmail())
			.name(dto.getName())
			.phoneNumber(dto.getPhoneNumber())
			.createdAt(LocalDateTime.now())
			.isActive(true)
			.role(Role.USER)
			.build();

		Users savedUser = usersRepository.save(user);

		return UsersResponseDTO.fromEntity(savedUser);
	}

	public Users getUsers(String username) {
		return usersRepository.findByUsername(username);
	}

	public Boolean isUsernameAvailable(String username) {
		return !usersRepository.existsByUsername(username);
	}

	public Boolean isEmailAvailable(String email) {
		return !usersRepository.existsByEmail(email) && !verificationService.containsEmail(email);
	}

	public void requestEmailVerification(String email) {
		if (!isEmailAvailable(email)) {
			throw new UserAlreadyExistsException("이미 등록되었거나 인증 중인 이메일입니다.");
		}

		String token = UUID.randomUUID().toString();
		verificationService.addToken(email, token, 5);

		emailService.sendVerificationEmail(email, token);
	}

	public boolean isEmailValid(String email) {
		return verificationService.isVerified(email);
	}

	public void emailValidation(String email, String token) {
		verificationService.verify(email, token);
	}

}