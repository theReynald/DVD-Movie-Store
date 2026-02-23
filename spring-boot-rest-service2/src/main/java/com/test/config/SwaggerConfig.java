package com.test.config;

import org.springdoc.core.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfig {
	@Bean
	public GroupedOpenApi api() {
		// select all API paths
		return GroupedOpenApi.builder()
				.group("api")
				.pathsToMatch("/**")
				.build();
	}
}
