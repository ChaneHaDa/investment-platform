package com.chan.stock_portfolio_backtest_api.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chan.stock_portfolio_backtest_api.user.domain.Users;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public interface UsersRepository extends JpaRepository<Users, Integer> {
	Users findByUsername(String username);

	boolean existsByUsername(
		@NotBlank(message = "Username is required.") @Size(min = 3, max = 20, message = "ID must be between 3 and 20 characters.") String username);

	boolean existsByEmail(
		@NotBlank(message = "Email is required.") @Email(message = "Email must be a valid email address.") String email);

	Users getReferenceByUsername(String name);
}
