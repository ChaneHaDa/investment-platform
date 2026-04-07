package com.chan.stock_portfolio_backtest_api.stock.domain;

import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class StockNameHistory {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(nullable = false, length = 100)
	private String name;
	@Column(nullable = false)
	private LocalDate startAt;
	private LocalDate endAt;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "stock_id", nullable = false)
	@JsonBackReference
	private Stock stock;

	public void setStock(Stock stock) {
		if (this.stock != stock) {
			this.stock = stock;
			if (stock != null && !stock.getNameHistoryList().contains(this)) {
				stock.getNameHistoryList().add(this);
			}
		}
	}

}
