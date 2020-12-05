package com.springboot.blog;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;

import javax.sql.DataSource;

@SpringBootApplication
public class MyblogApplication {
//    @Bean //手动初始化DruidDataSource 对象
//    @ConfigurationProperties(prefix = "spring.datasource.druid")
//    public DataSource druid(){
//        DruidDataSource ds = new DruidDataSource();
//        return ds;
//    }
    public static void main(String[] args) {
        SpringApplication.run(MyblogApplication.class, args);
    }

}
