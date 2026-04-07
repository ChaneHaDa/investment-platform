package com.chan.stock_portfolio_backtest_api.user.domain;

import java.time.LocalDateTime;

import com.chan.stock_portfolio_backtest_api.common.constants.Role;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Index;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "users", indexes = {
	@Index(name = "idx_users_email", columnList = "email"),
	@Index(name = "idx_users_active", columnList = "is_active")
})
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(nullable = false, unique = true)
	private String username;
	@Column(nullable = false)
	private String password;
	@Column(nullable = false, unique = true)
	private String email;
	@Column
	private String name;
	@Column
	private String phoneNumber;
	@Column(nullable = false, updatable = false)
	private LocalDateTime createdAt;
	@Column
	private LocalDateTime lastLoginAt;
	@Column
	@Builder.Default
	private Boolean isActive = true;
	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private Role role;
}
