package com.chan.stock_portfolio_backtest_api.common.filter;

import com.chan.stock_portfolio_backtest_api.common.constants.SecurityConstants;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.crypto.SecretKey;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class JWTTokenValidatorFilter extends OncePerRequestFilter {
    private static final Logger logger = LoggerFactory.getLogger(JWTTokenValidatorFilter.class);
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String jwt = request.getHeader(SecurityConstants.JWT_HEADER);
        if (null != jwt) {
            jwt = jwt.replace("Bearer ", "");
            try {
                SecretKey key = Keys.hmacShaKeyFor(
                        SecurityConstants.JWT_KEY.getBytes(StandardCharsets.UTF_8));

                Claims claims = Jwts.parserBuilder()
                        .setSigningKey(key)
                        .build()
                        .parseClaimsJws(jwt)
                        .getBody();
                String username = String.valueOf(claims.get("username"));
                String authorities = (String) claims.get("authorities");
                Authentication auth = new UsernamePasswordAuthenticationToken(username, null,
                        AuthorityUtils.commaSeparatedStringToAuthorityList(authorities));
                SecurityContextHolder.getContext().setAuthentication(auth);
            } catch (io.jsonwebtoken.ExpiredJwtException e) {
                logger.warn("JWT token expired: {}", e.getMessage());
                throw new BadCredentialsException("JWT token has expired");
            } catch (io.jsonwebtoken.UnsupportedJwtException e) {
                logger.warn("Unsupported JWT token: {}", e.getMessage());
                throw new BadCredentialsException("Unsupported JWT token");
            } catch (io.jsonwebtoken.MalformedJwtException e) {
                logger.warn("Malformed JWT token: {}", e.getMessage());
                throw new BadCredentialsException("Malformed JWT token");
            } catch (io.jsonwebtoken.security.SignatureException e) {
                logger.warn("Invalid JWT signature: {}", e.getMessage());
                throw new BadCredentialsException("Invalid JWT signature");
            } catch (IllegalArgumentException e) {
                logger.warn("JWT claims string is empty: {}", e.getMessage());
                throw new BadCredentialsException("JWT claims string is empty");
            } catch (Exception e) {
                logger.error("JWT token validation failed: {}", e.getMessage(), e);
                throw new BadCredentialsException("Invalid JWT token");
            }
        }
        filterChain.doFilter(request, response);
    }

    @Override
    protected boolean shouldNotFilter(HttpServletRequest request) {
        return request.getServletPath().equals("/api/v1/auth/login");
    }
}
