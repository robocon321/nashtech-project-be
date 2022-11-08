package com.robocon321.demo.handler;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.jwt.JwtTokenProvider;
import com.robocon321.demo.security.CustomOAuth2User;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.UserService;
import com.robocon321.demo.type.AuthenticationType;
import com.robocon321.demo.util.RandomString;

@Component
public class OAuth2LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{
	@Autowired 
	private UserService userService;
	
	@Autowired
	private JwtTokenProvider jwtTokenProvider;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		CustomOAuth2User oauth2User = (CustomOAuth2User) authentication.getPrincipal();
		
		String name = oauth2User.getName();
		String email = oauth2User.getEmail();
		String countryCode = request.getLocale().getCountry();
		String clientName = oauth2User.getClientName();
		
		AuthenticationType authenticationType = getAuthenticationType(clientName);
		
		Optional<User> userOpt = userService.findUserByEmail(email);
		CustomUserDetails customUserDetails;
		if (userOpt.isEmpty()) {
			UserRequestDTO userRequestDTO = new UserRequestDTO();
			userRequestDTO.setEmail(email);
			userRequestDTO.setPhone(RandomString.randomPhone());
			userRequestDTO.setFullname(name);
			userRequestDTO.setPassword(RandomString.randomPassword(10));
			userRequestDTO.setUsername(email);
			userService.save(userRequestDTO, new String[] {"CLIENT"});
		}
		userOpt = userService.findUserByEmail(email);
		customUserDetails = new CustomUserDetails(userOpt.get());
		String token = jwtTokenProvider.generateToken(customUserDetails);
		response.sendRedirect("http://localhost:3000/social-redirect?token="+token);
		
		super.onAuthenticationSuccess(request, response, authentication);
	}
	
	private AuthenticationType getAuthenticationType(String clientName) {
		if (clientName.equals("Google")) {
			return AuthenticationType.GOOGLE;
		} else if (clientName.equals("Facebook")) {
			return AuthenticationType.FACEBOOK;
		} else {
			return AuthenticationType.DATABASE;
		}
	}

}
