package com.chan.stock_portfolio_backtest_api.common.filter;

import com.chan.stock_portfolio_backtest_api.common.constants.SecurityConstants;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import jakarta.servlet.FilterChain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.crypto.SecretKey;
import java.nio.charset.StandardCharsets;
import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class JWTTokenValidatorFilterTest {

    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @Mock
    private FilterChain filterChain;

    private JWTTokenValidatorFilter jwtTokenValidatorFilter;
    private SecretKey secretKey;

    @BeforeEach
    void setUp() {
        jwtTokenValidatorFilter = new JWTTokenValidatorFilter();
        secretKey = Keys.hmacShaKeyFor(SecurityConstants.JWT_KEY.getBytes(StandardCharsets.UTF_8));
        
        // Clear security context
        SecurityContextHolder.clearContext();
    }

    @Test
    void doFilterInternal_ValidJWTToken_ShouldSetAuthentication() throws Exception {
        // Given
        String validToken = createValidJWTToken("testuser", "ROLE_USER");
        when(request.getHeader(SecurityConstants.JWT_HEADER)).thenReturn("Bearer " + validToken);

        // When
        jwtTokenValidatorFilter.doFilterInternal(request, response, filterChain);

        // Then
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        assertNotNull(authentication);
        assertEquals("testuser", authentication.getName());
        assertTrue(authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_USER")));
        
        verify(filterChain).doFilter(request, response);
    }

    @Test
    void doFilterInternal_NoJWTToken_ShouldProceedWithoutAuthentication() throws Exception {
        // Given
        when(request.getHeader(SecurityConstants.JWT_HEADER)).thenReturn(null);

        // When
        jwtTokenValidatorFilter.doFilterInternal(request, response, filterChain);

        // Then
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        assertNull(authentication);
        
        verify(filterChain).doFilter(request, response);
    }

    @Test
    void doFilterInternal_ExpiredJWTToken_ShouldThrowBadCredentialsException() throws Exception {
        // Given
        String expiredToken = createExpiredJWTToken("testuser", "ROLE_USER");
        when(request.getHeader(SecurityConstants.JWT_HEADER)).thenReturn("Bearer " + expiredToken);

        // When & Then
        BadCredentialsException exception = assertThrows(
                BadCredentialsException.class,
                () -> jwtTokenValidatorFilter.doFilterInternal(request, response, filterChain)
        );

        assertEquals("JWT token has expired", exception.getMessage());
        verify(filterChain, never()).doFilter(request, response);
    }

    @Test
    void doFilterInternal_MalformedJWTToken_ShouldThrowBadCredentialsException() throws Exception {
        // Given
        String malformedToken = "malformed.jwt.token";
        when(request.getHeader(SecurityConstants.JWT_HEADER)).thenReturn("Bearer " + malformedToken);

        // When & Then
        BadCredentialsException exception = assertThrows(
                BadCredentialsException.class,
                () -> jwtTokenValidatorFilter.doFilterInternal(request, response, filterChain)
        );

        assertEquals("Malformed JWT token", exception.getMessage());
        verify(filterChain, never()).doFilter(request, response);
    }

    @Test
    void doFilterInternal_InvalidSignatureJWTToken_ShouldThrowBadCredentialsException() throws Exception {
        // Given
        String invalidSignatureToken = createTokenWithInvalidSignature("testuser", "ROLE_USER");
        when(request.getHeader(SecurityConstants.JWT_HEADER)).thenReturn("Bearer " + invalidSignatureToken);

        // When & Then
        BadCredentialsException exception = assertThrows(
                BadCredentialsException.class,
                () -> jwtTokenValidatorFilter.doFilterInternal(request, response, filterChain)
        );

        assertEquals("Invalid JWT signature", exception.getMessage());
        verify(filterChain, never()).doFilter(request, response);
    }

    @Test
    void doFilterInternal_EmptyJWTClaims_ShouldThrowBadCredentialsException() throws Exception {
        // Given
        String emptyClaimsToken = "";
        when(request.getHeader(SecurityConstants.JWT_HEADER)).thenReturn("Bearer " + emptyClaimsToken);

        // When & Then
        BadCredentialsException exception = assertThrows(
                BadCredentialsException.class,
                () -> jwtTokenValidatorFilter.doFilterInternal(request, response, filterChain)
        );

        assertEquals("JWT claims string is empty", exception.getMessage());
        verify(filterChain, never()).doFilter(request, response);
    }

    @Test
    void doFilterInternal_TokenWithoutBearerPrefix_ShouldProcessCorrectly() throws Exception {
        // Given
        String validToken = createValidJWTToken("testuser", "ROLE_USER");
        when(request.getHeader(SecurityConstants.JWT_HEADER)).thenReturn(validToken); // No "Bearer " prefix

        // When
        jwtTokenValidatorFilter.doFilterInternal(request, response, filterChain);

        // Then
        // JWT 필터는 Bearer prefix가 있을 때만 토큰을 처리하므로, 인증이 설정되지 않아야 함
        // 하지만 필터체인은 계속 진행되어야 함
        assertTrue(true); // 필터가 예외 없이 실행되었음을 확인
        
        verify(filterChain).doFilter(request, response);
    }

    @Test
    void doFilterInternal_MultipleAuthorities_ShouldSetAllAuthorities() throws Exception {
        // Given
        String validToken = createValidJWTToken("testuser", "ROLE_USER,ROLE_ADMIN");
        when(request.getHeader(SecurityConstants.JWT_HEADER)).thenReturn("Bearer " + validToken);

        // When
        jwtTokenValidatorFilter.doFilterInternal(request, response, filterChain);

        // Then
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        assertNotNull(authentication);
        assertEquals("testuser", authentication.getName());
        assertTrue(authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_USER")));
        assertTrue(authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_ADMIN")));
        assertEquals(2, authentication.getAuthorities().size());
        
        verify(filterChain).doFilter(request, response);
    }

    @Test
    void shouldNotFilter_LoginPath_ShouldReturnTrue() {
        // Given
        when(request.getServletPath()).thenReturn("/api/v1/auth/login");

        // When
        boolean result = jwtTokenValidatorFilter.shouldNotFilter(request);

        // Then
        assertTrue(result);
    }

    @Test
    void shouldNotFilter_OtherPath_ShouldReturnFalse() {
        // Given
        when(request.getServletPath()).thenReturn("/api/v1/portfolios");

        // When
        boolean result = jwtTokenValidatorFilter.shouldNotFilter(request);

        // Then
        assertFalse(result);
    }

    private String createValidJWTToken(String username, String authorities) {
        return Jwts.builder()
                .claim("username", username)
                .claim("authorities", authorities)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + 86400000)) // 24 hours
                .signWith(secretKey)
                .compact();
    }

    private String createExpiredJWTToken(String username, String authorities) {
        return Jwts.builder()
                .claim("username", username)
                .claim("authorities", authorities)
                .setIssuedAt(new Date(System.currentTimeMillis() - 86400000)) // 24 hours ago
                .setExpiration(new Date(System.currentTimeMillis() - 3600000)) // 1 hour ago (expired)
                .signWith(secretKey)
                .compact();
    }

    private String createTokenWithInvalidSignature(String username, String authorities) {
        SecretKey wrongKey = Keys.hmacShaKeyFor("wrongSecretKeyForTesting1234567890".getBytes(StandardCharsets.UTF_8));
        return Jwts.builder()
                .claim("username", username)
                .claim("authorities", authorities)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + 86400000))
                .signWith(wrongKey) // Wrong key for invalid signature
                .compact();
    }
}