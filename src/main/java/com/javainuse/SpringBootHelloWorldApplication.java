package com.javainuse;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;



@SpringBootApplication
public class SpringBootHelloWorldApplication extends SpringBootServletInitializer {
	
	/*
	 * https://www.devglan.com/spring-boot/spring-boot-mvc-apache-tiles-example
	 * 
	 * Error creating bean with name 'tilesConfigurer' defined in class path resource 
	 * 
	 *  
	 *  If you are using Eclipse :

Go to top bar : Window -> Preference -> Maven -> tick the option ('download artifact javadoc').

Thats is 'Apply & Close'.*/
	
	private static Class applicationClass = SpringBootHelloWorldApplication.class;


	public static void main(String[] args) {
		SpringApplication.run(SpringBootHelloWorldApplication.class, args);
	}
	
	 protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	        return application.sources(applicationClass);
	    }
}
