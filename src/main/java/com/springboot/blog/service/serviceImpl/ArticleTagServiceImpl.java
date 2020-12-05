package com.springboot.blog.service.serviceImpl;

import com.springboot.blog.mapper.ArticleTagMapper;
import com.springboot.blog.entity.ArticleTag;
import com.springboot.blog.service.ArticleTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleTagServiceImpl implements ArticleTagService {
    @Autowired
    private ArticleTagMapper articleTagMapper;

    public void setArticleTagMapper(ArticleTagMapper articleTagMapper) {
        this.articleTagMapper = articleTagMapper;
    }


    public void addArticleTag(ArticleTag articleTag) {
        articleTagMapper.addArticleTag(articleTag);
    }

    public void deleteArticleTag(Integer articleId) {
        articleTagMapper.deleteArticleTag(articleId);
    }

    public void updateArticleTag(ArticleTag articleTag) {
        articleTagMapper.updateArticleTag(articleTag);
    }

    public List<ArticleTag> queryAllArticleTag(Integer articleId) {
        return articleTagMapper.queryAllArticleTag(articleId);
    }
}
