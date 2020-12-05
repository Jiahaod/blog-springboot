package com.springboot.blog.service;

import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.ArticleTag;
import com.springboot.blog.entity.Tag;

import java.util.List;

public interface ArticleTagService {
    public void addArticleTag(ArticleTag articleTag);
    public void deleteArticleTag(Integer articleId);
    public void updateArticleTag(ArticleTag articleTag);
    public List<ArticleTag> queryAllArticleTag(Integer articleId);
}
