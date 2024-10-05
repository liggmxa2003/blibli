package com.lwz.interceptor.config;


import com.lwz.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    //配置拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
       registry.addInterceptor(new LoginInterceptor())
               .addPathPatterns("/admin/**")//拦截admin下的所有路径
               .excludePathPatterns("/admin")//排除
               .excludePathPatterns("/admin/login");//排除登录页面
    }
}
