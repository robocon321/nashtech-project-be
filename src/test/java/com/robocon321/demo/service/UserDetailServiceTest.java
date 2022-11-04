package com.robocon321.demo.service;

import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.Optional;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.robocon321.demo.SpringBootEcommerceApplication;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.exception.NotfoundException;
import com.robocon321.demo.repository.UserRepository;
import com.robocon321.demo.security.CustomUserDetails;

@SpringBootTest(classes= SpringBootEcommerceApplication.class)
public class UserDetailServiceTest {
	@Autowired
	private UserDetailsService userDetailsService;
	
	@MockBean
	private UserRepository userRepository;
	
	@DisplayName("Load a user not exists")
	@ParameterizedTest
	@ValueSource(strings = {"robocon321"})
	public void loadUserDetailService_Notfound(String username) {		
		String expected = "Username or password is incorrect!";
		NotfoundException ex = Assertions.assertThrows(NotfoundException.class, () -> userDetailsService.loadUserByUsername(username));
		Assertions.assertEquals(expected, ex.getMessage());
	}

	@DisplayName("Load a user exists")
	@ParameterizedTest
	@ValueSource(strings = {"robocon321"})
	public void loadUserDetailService_founded(String username) {
		User user = new User();
		Optional<User> userOpt = Optional.of(user);
		
		when(userRepository.findOneByUsernameAndStatus(username, 1)).thenReturn(userOpt);
		
		UserDetails expected = new CustomUserDetails(user);
		UserDetails actual = userDetailsService.loadUserByUsername(username);
		
		Assertions.assertEquals(expected, actual);
		
		verify(userRepository, times(1)).findOneByUsernameAndStatus(username, 1);
	}
}
