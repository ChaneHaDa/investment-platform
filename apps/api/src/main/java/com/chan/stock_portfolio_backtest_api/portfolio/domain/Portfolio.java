package com.chan.stock_portfolio_backtest_api.portfolio.domain;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.chan.stock_portfolio_backtest_api.user.domain.Users;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Portfolio {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(nullable = false, length = 100)
	private String name;
	@Column(length = 500)
	private String description;

	@Column(nullable = false)
	private Long amount;
	@Column(nullable = false)
	private LocalDate startDate;
	@Column(nullable = false)
	private LocalDate endDate;

	private Float ror;
	private Float volatility;

	private Float price;

	@ManyToOne
	@JoinColumn(name = "user_id")
	@JsonBackReference
	private Users user;

	@OneToMany(mappedBy = "portfolio", cascade = CascadeType.ALL, orphanRemoval = true)
	@Builder.Default
	@JsonManagedReference
	private List<PortfolioItem> portfolioItemList = new ArrayList<>();

	public void addPortfolioItem(PortfolioItem item) {
		portfolioItemList.add(item);
		item.setPortfolio(this);
	}

	public void updatePortfolio(String name, String description, Long amount, LocalDate startDate,
		LocalDate endDate, Float ror, Float volatility, Float price) {
		this.name = name;
		this.description = description;
		this.amount = amount;
		this.startDate = startDate;
		this.endDate = endDate;
		this.ror = ror;
		this.volatility = volatility;
		this.price = price;
	}

	public void updatePortfolioItems(List<PortfolioItem> newItems) {
		portfolioItemList.clear();
		for (PortfolioItem item : newItems) {
			portfolioItemList.add(item);
			item.setPortfolio(this);
		}
	}

}
