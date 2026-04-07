package com.chan.stock_portfolio_backtest_api.stock.domain;

import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Index;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(indexes = {
	@Index(name = "idx_stock_basedate", columnList = "stock_id, base_date")
})
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class StockPrice {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(nullable = false)
	private Float closePrice;
	@Column(nullable = false)
	private Float openPrice;
	@Column(nullable = false)
	private Float lowPrice;
	@Column(nullable = false)
	private Float highPrice;
	private Long tradeQuantity;
	private Long tradeAmount;
	private Long issuedCount;
	@Column(nullable = false)
	private LocalDate baseDate;

	@ManyToOne
	@JoinColumn(name = "stock_id")
	@JsonBackReference
	private Stock stock;

	public void setStock(Stock stock) {
		if (this.stock != stock) {
			this.stock = stock;
			if (stock != null && !stock.getStockPriceList().contains(this)) {
				stock.getStockPriceList().add(this);
			}
		}
	}
}
