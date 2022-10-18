package com.robocon321.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import com.robocon321.demo.repository.UserRepository;

@SpringBootApplication
@EnableJpaAuditing
public class SpringBootEcommerceApplication {
	@Autowired
	static UserRepository userRepository;
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootEcommerceApplication.class, args);
	}

}
