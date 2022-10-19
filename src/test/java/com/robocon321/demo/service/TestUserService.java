package com.robocon321.demo.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.jdbc.Sql;

import com.robocon321.demo.repository.UserRepository;

@TestPropertySource("/application-test.properties")
@SpringBootTest
public class TestUserService {
	@Autowired
	private UserRepository userRepository;
	
	@Test
	public void testSizeUserSample() {
		Assertions.assertEquals(2, userRepository.count());
	}
}
