package com.robocon321.demo.jwt;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.robocon321.demo.security.CustomUserDetails;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.UnsupportedJwtException;
import lombok.extern.slf4j.Slf4j;

@Component
public class JwtTokenProvider {
	private final String SECRET = "hiphopneverdie123";
	private final long EXPIRATION = 604800000L;
	
	public String generateToken(CustomUserDetails userDetails) {
		Date now = new Date();
		Date expiryDate = new Date(now.getTime() + EXPIRATION);
		return Jwts.builder()
				.setSubject(Long.toString(userDetails.getUser().getId()))
				.setIssuedAt(expiryDate)
				.signWith(SignatureAlgorithm.HS256, SECRET)				
				.compact();
	}
	
	public Integer getUserIdFromJWT(String token) {
		Claims claims = Jwts.parser()
				.setSigningKey(SECRET)
				.parseClaimsJws(token)
				.getBody();
		return Integer.parseInt(claims.getSubject());
	}
	
    public boolean validateToken(String authToken) {
        try {
            Jwts.parser().setSigningKey(SECRET).parseClaimsJws(authToken);
            return true;
        } catch (MalformedJwtException ex) {
            throw new RuntimeException("Invalid JWT token");
        } catch (ExpiredJwtException ex) {
        	throw new RuntimeException("Expired JWT token");
        } catch (UnsupportedJwtException ex) {
        	throw new RuntimeException("Unsupported JWT token");
        } catch (IllegalArgumentException ex) {
        	throw new RuntimeException("JWT claims string is empty.");
        }
    }
}
