package com.robocon321.demo.config;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.BeanIds;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;

import com.robocon321.demo.handler.OAuth2LoginSuccessHandler;
import com.robocon321.demo.security.JwtAuthenticationFilter;
import com.robocon321.demo.service.impl.CustomOauth2UserService;
import com.robocon321.demo.service.impl.UserServiceImpl;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	UserServiceImpl userService;
	
	@Autowired 
	private CustomOauth2UserService oAuth2UserService;
	
	@Autowired 
	private OAuth2LoginSuccessHandler oauth2LoginHandler;


	@Bean
	public JwtAuthenticationFilter jwtAuthenticationFilter() {
		return new JwtAuthenticationFilter();
	}

	
    @Bean(BeanIds.AUTHENTICATION_MANAGER)
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        // Get AuthenticationManager bean
        return super.authenticationManagerBean();
    }

	public PasswordEncoder passwordEncoder() {
		return new PasswordEncoder() {

			@Override
			public boolean matches(CharSequence rawPassword, String encodedPassword) {
				return rawPassword.equals(encodedPassword);
			}

			@Override
			public String encode(CharSequence rawPassword) {
				return rawPassword.toString();
			}
		};
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService).passwordEncoder(passwordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		CorsConfiguration config = new CorsConfiguration();

		config.setAllowCredentials(true);
		config.setAllowedHeaders(List.of("Authorization", "Cache-Control", "Content-Type", "token"));
		config.addAllowedMethod("*");
		config.setAllowedOrigins(List.of("http://localhost:3000"));

		http.authorizeRequests()
		.antMatchers(HttpMethod.GET, "/users/**").hasAnyAuthority("ADMIN", "CLIENT")
		.antMatchers(HttpMethod.POST, "/users").hasAnyAuthority("ADMIN", "CLIENT")
		.antMatchers(HttpMethod.PUT, "/users").hasAnyAuthority("ADMIN", "CLIENT")
		.antMatchers(HttpMethod.DELETE, "/users").hasAnyAuthority("ADMIN")

		.antMatchers(HttpMethod.PUT, "/products").hasAnyAuthority("ADMIN")
		.antMatchers(HttpMethod.POST, "/products").hasAnyAuthority("ADMIN")
		.antMatchers(HttpMethod.DELETE, "/products").hasAnyAuthority("ADMIN")

		.antMatchers(HttpMethod.PUT, "/categories").hasAnyAuthority("ADMIN")
		.antMatchers(HttpMethod.POST, "/categories").hasAnyAuthority("ADMIN")
		.antMatchers(HttpMethod.DELETE, "/categories").hasAnyAuthority("ADMIN")
		
		.antMatchers(HttpMethod.PUT, "/cart_items").hasAnyAuthority("CLIENT")
		.antMatchers(HttpMethod.POST, "/cart_items").hasAnyAuthority("CLIENT")
		.antMatchers(HttpMethod.DELETE, "/cart_items").hasAnyAuthority("CLIENT")
		
		.antMatchers(HttpMethod.POST, "/ratings").hasAnyAuthority("CLIENT")

		.antMatchers(HttpMethod.POST, "/contacts").hasAnyAuthority("CLIENT")

		.antMatchers(HttpMethod.GET, "/carts/cart_item/product").hasAnyAuthority("CLIENT", "ADMIN")
		
		.antMatchers("/**").permitAll()
		
		.and().csrf().disable().cors().configurationSource(request -> config)
		.and()
		.oauth2Login()
		.loginPage("/login")
		.userInfoEndpoint()
		.userService(oAuth2UserService)
		.and()
		.successHandler(oauth2LoginHandler);

		
		http.headers().frameOptions().disable();
		http.addFilterBefore(jwtAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);
	}

}
