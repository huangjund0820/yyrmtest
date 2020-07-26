package com.yyrm.portal.config;

import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.*;

import java.util.List;


@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {

    @Autowired
    private FastJsonHttpMessageConverter fastJsonHttpMessageConverter;
    @Autowired
    private SiteOptions siteOptions;

    /**
     * Add intercepter
     *
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
       // registry.addPathPatterns("/**") .excludePathPatterns("/dist/**", "/store/**", "/static/**");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String location = "file:///" + siteOptions.getLocation();
        registry.addResourceHandler("/dist/**")
                .addResourceLocations("classpath:/static/dist/");
           }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(fastJsonHttpMessageConverter);
    }

}
