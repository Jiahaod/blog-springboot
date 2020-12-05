package com.springboot.blog;

import com.springboot.blog.entity.Article;
import com.springboot.blog.service.serviceImpl.ArticleServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class MyblogApplicationTests {
    @Autowired
    ArticleServiceImpl articleService;

    @Test
    public void test() {
        List<Article> articleList = articleService.queryAllArticles();
        for(Article article : articleList) {
            System.out.println(article);
        }
    }
    @Test
    void contextLoads() {
    }

}
