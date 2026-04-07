package com.chan.stock_portfolio_backtest_api.stock.domain;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Index;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OrderBy;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(indexes = {
	@Index(name = "idx_stock_name", columnList = "name"),
	@Index(name = "idx_stock_shortcode", columnList = "short_code")
})
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Stock {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(nullable = false, length = 100)
	private String name;
	@Column(nullable = false, length = 20)
	private String shortCode;
	@Column(unique = true, nullable = false, length = 12)
	private String isinCode;
	@Column(length = 50)
	private String marketCategory;

	@OneToMany(mappedBy = "stock", cascade = CascadeType.ALL, orphanRemoval = true)
	@Builder.Default
	@JsonManagedReference
	private List<StockPrice> stockPriceList = new ArrayList<>();

	@OneToMany(mappedBy = "stock", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
	@OrderBy("startAt DESC")
	@Builder.Default
	@JsonManagedReference
	private List<StockNameHistory> nameHistoryList = new ArrayList<>();
}
