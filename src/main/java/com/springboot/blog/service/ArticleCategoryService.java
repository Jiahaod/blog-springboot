package com.springboot.blog.service;

import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.ArticleCategory;
import com.springboot.blog.entity.Category;

public interface ArticleCategoryService {
    public void addArticleCategory(ArticleCategory articleCategory);
    public void deleteArticleCategory(Integer articleId);
    public void updateArticleCategory(ArticleCategory articleCategory);
    public ArticleCategory queryAllArticleCategory(Integer articleId);
}
