package com.springboot.blog.service.serviceImpl;

import com.springboot.blog.mapper.ArticleMapper;
import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.Category;
import com.springboot.blog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    public void setArticleMapper(ArticleMapper articleMapper) {
        this.articleMapper = articleMapper;
    }

    public void addArticle(Article article) {
        articleMapper.addArticle(article);
    }


    public void deleteArticle(Integer articleId) {
        articleMapper.deleteArticle(articleId);
    }

    public void updateArticle(Article article) {
        articleMapper.updateArticle(article);
    }

    public List<Article> queryAllArticles() {
        return articleMapper.queryAllArticles();
    }

    public List<Article> queryArticleByName(String articleName) {
        return articleMapper.queryArticleByName(articleName);
    }

    public Article queryArticleById(int articleId) {
        return articleMapper.queryArticleById(articleId);
    }

    public Integer queryMaxArticleId() {
        return articleMapper.queryMaxArticleId();
    }

    public Category queryCategoryByArticleId(Integer articleId) {
        return articleMapper.queryCategoryByArticleId(articleId);
    }
}
