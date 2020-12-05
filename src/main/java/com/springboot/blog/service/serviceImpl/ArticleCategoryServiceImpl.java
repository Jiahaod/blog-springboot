package com.springboot.blog.service.serviceImpl;

import com.springboot.blog.mapper.ArticleCategoryMapper;
import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.ArticleCategory;
import com.springboot.blog.entity.Category;
import com.springboot.blog.service.ArticleCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleCategoryServiceImpl implements ArticleCategoryService {

    @Autowired
    private ArticleCategoryMapper articleCategoryMapper;

    public void setArticleCategoryMapper(ArticleCategoryMapper articleCategoryMapper) {
        this.articleCategoryMapper = articleCategoryMapper;
    }

    public void addArticleCategory(ArticleCategory articleCategory) {
        articleCategoryMapper.addArticleCategory(articleCategory);
    }

    public void deleteArticleCategory(Integer articleId) {
        articleCategoryMapper.deleteArticleCategory(articleId);
    }

    public void updateArticleCategory(ArticleCategory articleCategory) {
        articleCategoryMapper.updateArticleCategory(articleCategory);
    }

    public ArticleCategory queryAllArticleCategory(Integer articleId) {
        return articleCategoryMapper.queryAllArticleCategory(articleId);
    }
}
