package com.user.swaggerconfig;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.user.util.UserConstant;

import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class swaggerConfig {
	
	/**
	 * Method is responsible for Swagger2 Documentation 
	 * @return Docket docket
	 */
	@Bean
	  public Docket api(){
		return new Docket(DocumentationType.SWAGGER_2)
		        .produces(UserConstant.DEFAULT_PRODUCES_AND_CONSUMES)
		        .consumes(UserConstant.DEFAULT_PRODUCES_AND_CONSUMES);
		
	}

}
