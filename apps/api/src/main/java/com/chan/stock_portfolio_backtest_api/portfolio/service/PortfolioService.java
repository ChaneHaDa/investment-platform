package com.chan.stock_portfolio_backtest_api.portfolio.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chan.stock_portfolio_backtest_api.portfolio.domain.Portfolio;
import com.chan.stock_portfolio_backtest_api.portfolio.domain.PortfolioItem;
import com.chan.stock_portfolio_backtest_api.stock.domain.Stock;
import com.chan.stock_portfolio_backtest_api.user.domain.Users;
import com.chan.stock_portfolio_backtest_api.user.service.AuthService;
import com.chan.stock_portfolio_backtest_api.user.service.SecurityService;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioItemRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioRequestDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioDetailResponseDTO;
import com.chan.stock_portfolio_backtest_api.portfolio.dto.PortfolioResponseDTO;
import com.chan.stock_portfolio_backtest_api.common.exception.EntityNotFoundException;
import com.chan.stock_portfolio_backtest_api.common.exception.PortfolioNotFoundException;
import com.chan.stock_portfolio_backtest_api.common.exception.StockNotFoundException;
import com.chan.stock_portfolio_backtest_api.common.constants.AppConstants;
import com.chan.stock_portfolio_backtest_api.portfolio.repository.PortfolioRepository;
import com.chan.stock_portfolio_backtest_api.stock.repository.StockRepository;

@Service
public class PortfolioService {

	private final PortfolioRepository portfolioRepository;
	private final AuthService authService;
	private final StockRepository stockRepository;
	private final SecurityService securityService;

	public PortfolioService(PortfolioRepository portfolioRepository, AuthService authService,
		StockRepository stockRepository, SecurityService securityService) {
		this.portfolioRepository = portfolioRepository;
		this.authService = authService;
		this.stockRepository = stockRepository;
		this.securityService = securityService;
	}

	// save
	@Transactional
	public PortfolioResponseDTO createPortfolio(PortfolioRequestDTO portfolioRequestDTO) {
		Users user = authService.getCurrentUser();
		Portfolio portfolio = Portfolio.builder()
			.name(portfolioRequestDTO.getName())
			.description(portfolioRequestDTO.getDescription())
			.ror(portfolioRequestDTO.getRor())
			.amount(portfolioRequestDTO.getAmount())
			.price(portfolioRequestDTO.getPrice())
			.startDate(portfolioRequestDTO.getStartDate())
			.endDate(portfolioRequestDTO.getEndDate())
			.volatility(portfolioRequestDTO.getVolatility())
			.user(user)
			.build();

		// N+1 쿼리 문제 해결을 위한 배치 조회
		List<Integer> stockIds = portfolioRequestDTO.getPortfolioItemRequestDTOList().stream()
				.map(PortfolioItemRequestDTO::getStockId)
				.toList();
		
		List<Stock> stocks = stockRepository.findAllById(stockIds);
		
		if (stocks.size() != stockIds.size()) {
			throw new EntityNotFoundException("Some stocks not found");
		}
		
		Map<Integer, Stock> stockMap = stocks.stream()
				.collect(java.util.stream.Collectors.toMap(Stock::getId, stock -> stock));
		
		portfolioRequestDTO.getPortfolioItemRequestDTOList().forEach(item -> {
			Stock stock = stockMap.get(item.getStockId());
			portfolio.addPortfolioItem(PortfolioItemRequestDTO.DTOToEntity(item, stock));
		});

		return PortfolioResponseDTO.entityToDTO(portfolioRepository.save(portfolio));
	}

	// find: By User, 현재 로그인한 유저의 포트폴리오 리스트 반환
	public List<PortfolioResponseDTO> findPortfolioByUser() {
		Users user = authService.getCurrentUser();
		List<PortfolioResponseDTO> portfolioResponseDTOList = portfolioRepository.findAllByUser(user)
			.stream()
			.map(PortfolioResponseDTO::entityToDTO)
			.toList();

		if (portfolioResponseDTOList.isEmpty()) {
			throw new EntityNotFoundException(AppConstants.ENTITY_NOT_FOUND_ERROR);
		}

		return portfolioResponseDTOList;
	}

	// find: By Id, Id로 포트폴리오 상세 반환 (소유권 검증 포함)
	public PortfolioDetailResponseDTO findPortfolioById(Integer id) {
		Portfolio portfolio = portfolioRepository.findById(id).orElseThrow(EntityNotFoundException::new);
		
		// 소유권 검증
		Users currentUser = authService.getCurrentUser();
		if (!portfolio.getUser().getId().equals(currentUser.getId())) {
			throw new EntityNotFoundException("Portfolio not found");
		}

		return PortfolioDetailResponseDTO.entityToDTO(portfolio);
	}

	// delete
	@Transactional
	public void deletePortfolio(Integer id) {
		Portfolio portfolio = portfolioRepository.findById(id).orElseThrow(EntityNotFoundException::new);
		Users user = authService.getCurrentUser();
		securityService.validatePortfolioOwnership(portfolio, user);
		portfolioRepository.delete(portfolio);
	}

	@Transactional
	public PortfolioResponseDTO updatePortfolio(Integer portfolioId, PortfolioRequestDTO portfolioRequestDTO) {
		Portfolio portfolio = portfolioRepository.findById(portfolioId)
			.orElseThrow(() -> new PortfolioNotFoundException(portfolioId));
		Users user = authService.getCurrentUser();
		securityService.validatePortfolioOwnership(portfolio, user);

		portfolio.updatePortfolio(
			portfolioRequestDTO.getName(),
			portfolioRequestDTO.getDescription(),
			portfolioRequestDTO.getAmount(),
			portfolioRequestDTO.getStartDate(),
			portfolioRequestDTO.getEndDate(),
			portfolioRequestDTO.getRor(),
			portfolioRequestDTO.getVolatility(),
			portfolioRequestDTO.getPrice()
		);

		if (portfolioRequestDTO.getPortfolioItemRequestDTOList() != null) {
			List<PortfolioItem> newItems = new ArrayList<>();
			// N+1 쿼리 문제 해결을 위한 배치 조회
			List<Integer> stockIds = portfolioRequestDTO.getPortfolioItemRequestDTOList().stream()
					.map(PortfolioItemRequestDTO::getStockId)
					.toList();
			
			List<Stock> stocks = stockRepository.findAllById(stockIds);
			
			if (stocks.size() != stockIds.size()) {
				throw new EntityNotFoundException("Some stocks not found");
			}
			
			Map<Integer, Stock> stockMap = stocks.stream()
					.collect(java.util.stream.Collectors.toMap(Stock::getId, stock -> stock));
			
			for (PortfolioItemRequestDTO itemDTO : portfolioRequestDTO.getPortfolioItemRequestDTOList()) {

				Stock stock = stockMap.get(itemDTO.getStockId());
				if (stock == null) {
					throw new StockNotFoundException(itemDTO.getStockId());
				}
				PortfolioItem newItem = PortfolioItemRequestDTO.DTOToEntity(itemDTO, stock);
				newItems.add(newItem);
			}
			portfolio.updatePortfolioItems(newItems);
		}

		return PortfolioResponseDTO.entityToDTO(portfolio);
	}
}
