package com.springboot.blog.service;

import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.Category;

import java.util.List;

public interface ArticleService {
    //增
    public void addArticle(Article article);

    //删
    public void deleteArticle(Integer articleId);

    //改
    public void updateArticle(Article article);

    //查
    public List<Article> queryAllArticles();

    public List<Article> queryArticleByName(String articleName);


    public Article queryArticleById(int articleId);

    Integer queryMaxArticleId();

    Category queryCategoryByArticleId(Integer articleId);
}
