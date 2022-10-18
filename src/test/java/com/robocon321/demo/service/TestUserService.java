package com.robocon321.demo.service;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.TestPropertySource;

import com.robocon321.demo.repository.UserRepository;

@TestPropertySource("/application-test.properties")
@SpringBootTest
public class TestUserService {
	@Autowired
	private UserRepository userRepository;
		
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private String sqlInsertUser;

	private String sqlDeleteUser="delete from User";
	
	@BeforeEach
	public void createUser() {
		jdbcTemplate.execute(sqlDeleteUser);
	}
	
	@Test
	public void test() {
		Assertions.assertEquals(0, userRepository.count());
	}
	
	@AfterEach
	public void deleteUser() {
		jdbcTemplate.execute(sqlDeleteUser);
	}
}
