package com.springboot.blog.mapper;

import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.ArticleCategory;
import com.springboot.blog.entity.ArticleTag;
import com.springboot.blog.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface ArticleCategoryMapper {
    public void addArticleCategory(ArticleCategory articleCategory);
    public void deleteArticleCategory(Integer articleId);
    public void updateArticleCategory(ArticleCategory articleCategory);
    public ArticleCategory queryAllArticleCategory(Integer articleId);
}
