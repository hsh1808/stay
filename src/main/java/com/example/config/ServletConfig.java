package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@EnableWebMvc
@ComponentScan(basePackages= {"com.example.controller","com.example.exception"})
public class ServletConfig implements WebMvcConfigurer {

		@Override
		public void configureViewResolvers(ViewResolverRegistry registry) {
			InternalResourceViewResolver bean=new InternalResourceViewResolver();
			bean.setViewClass(JstlView.class);
			bean.setPrefix("/WEB-INF/view/"); 
			bean.setSuffix(".jsp");
			registry.viewResolver(bean);
		}


		@Override
		public void addResourceHandlers(ResourceHandlerRegistry registry) {
			registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
		}
		
		
		
//		파일(사진) 업로드 관련 코드		
		 @Bean
		  public MultipartResolver multipartResolver() {
		    StandardServletMultipartResolver resolver 
		              = new StandardServletMultipartResolver();
		    return resolver;
		  }
}
