package com.koffice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.koffice.filter.LoginCheckFilter;

import jakarta.servlet.Filter;

@SpringBootApplication
public class KosofficeApplication {

	public static void main(String[] args) {
		SpringApplication.run(KosofficeApplication.class, args);
	}
	
	@Bean
	public Filter loginCheckFilter() {
		return new LoginCheckFilter();
	}

}
