package com.javainuse;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


public class WebConfig extends WebMvcConfigurerAdapter{
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/*.js/**").addResourceLocations("/static/");
		registry.addResourceHandler("/*.css/**").addResourceLocations("/static/");
	}

}
