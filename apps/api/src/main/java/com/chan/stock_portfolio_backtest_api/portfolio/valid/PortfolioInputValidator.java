package com.chan.stock_portfolio_backtest_api.portfolio.valid;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioBacktestRequestItemDTO;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class PortfolioInputValidator implements ConstraintValidator<ValidPortfolioInput, PortfolioBacktestRequestDTO> {
	@Override
	public boolean isValid(PortfolioBacktestRequestDTO portfolioBacktestRequestDTO,
		ConstraintValidatorContext constraintValidatorContext) {
		constraintValidatorContext.disableDefaultConstraintViolation();

		if (portfolioBacktestRequestDTO == null) {
			return true;
		}

		//startDate < endDate valid
		LocalDate startDate = portfolioBacktestRequestDTO.getStartDate();
		LocalDate endDate = portfolioBacktestRequestDTO.getEndDate();
		if (startDate != null && endDate != null) {
			if (!startDate.isBefore(endDate)) {
				constraintValidatorContext
					.buildConstraintViolationWithTemplate("endDate must be after the startDate")
					.addPropertyNode("endDate")
					.addConstraintViolation();
				return false;
			}
		}

		// weight sum == 1 valid (allowing a small epsilon for floating point summation)
		List<PortfolioBacktestRequestItemDTO> portfolioBacktestRequestItemDTOList =
			portfolioBacktestRequestDTO.getPortfolioBacktestRequestItemDTOList();
		float weightSum = 0;
		if (portfolioBacktestRequestItemDTOList != null) {
			for (PortfolioBacktestRequestItemDTO i : portfolioBacktestRequestItemDTOList) {
				weightSum += i.getWeight();
			}
		}

		// duplicate stockId is not allowed
		if (portfolioBacktestRequestItemDTOList != null) {
			Set<Integer> stockIds = new HashSet<>();
			for (PortfolioBacktestRequestItemDTO item : portfolioBacktestRequestItemDTOList) {
				if (item != null && item.getStockId() != null && !stockIds.add(item.getStockId())) {
					constraintValidatorContext
						.buildConstraintViolationWithTemplate("duplicate stockId is not allowed")
						.addPropertyNode("portfolioBacktestRequestItemDTOList")
						.addConstraintViolation();
					return false;
				}
			}
		}

		final float EPSILON = 1e-6f;
		if (Math.abs(weightSum - 1f) > EPSILON) {
			constraintValidatorContext
				.buildConstraintViolationWithTemplate("weight sum must be 1")
				.addPropertyNode("portfolioBacktestRequestItemDTOList")
				.addConstraintViolation();
			return false;
		}

		return true;
	}
}
