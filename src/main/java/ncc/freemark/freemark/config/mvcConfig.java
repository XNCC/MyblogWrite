package ncc.freemark.freemark.config;

import ncc.freemark.freemark.Interceptor.BaseInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.*;

import javax.annotation.Resource;

@Configuration
public class mvcConfig  implements WebMvcConfigurer {
    @Autowired
    private BaseInterceptor baseInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(baseInterceptor).addPathPatterns("/**").excludePathPatterns("/login", "/","/showBlog","/showDetails/*/*/*","/classify","/tag","/friendsLink","/about","/static/**");
      //  WebMvcConfigurer.super.addInterceptors(registry);    //较新Spring Boot的版本中这里可以直接去掉，否则会报错
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    //其他静态资源，与本文关系不大
    //需要配置1：--需要告知系统，这是要被当成静态文件的！
    //第一个方法设置访问路径前缀，第二个方法设置资源路径
    //这是windows的配置方式，你可以声明一个变量在系统机器上调试时只需要修改变量名即可机器
    //registry.addResourceHandler("/temp-Cover/**").addResourceLocations("file:E:/Cover/");
        registry.addResourceHandler("/temp-Cover/**").addResourceLocations("views/*");
    registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
     //   super.addResourceHandlers(registry);
    }


}