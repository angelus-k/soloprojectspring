package com.fdmgroup.springbootintro.security2;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/h2/**").permitAll().antMatchers("/css/**", "/js/**", "/img/**" ,"/regsuccess/**", "/resources/**", "/register", "/donate").permitAll()  //.antMatchers("/account/**").permitAll()
				.anyRequest().authenticated().and().formLogin().loginPage("/login").permitAll().and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/login");
				//.permitAll().and();
		
		http.csrf().disable();
		http.headers().frameOptions().disable();
	}

	@Bean
	DaoAuthenticationProvider authenticationProvider(MyDonorDetailsService service) {

		DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();

		authProvider.setUserDetailsService(service);
		authProvider.setPasswordEncoder(encoder());

		return authProvider;

	}

	@Bean
	public PasswordEncoder encoder() {
		
		return new BCryptPasswordEncoder();
	}

}
