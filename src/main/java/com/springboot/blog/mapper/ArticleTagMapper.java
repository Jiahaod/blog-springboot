package com.springboot.blog.mapper;

import com.springboot.blog.entity.ArticleTag;
import com.springboot.blog.entity.Category;
import com.springboot.blog.entity.Tag;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ArticleTagMapper {
    public void addArticleTag(ArticleTag articleTag);
    public void deleteArticleTag(Integer articleId);
    public void updateArticleTag(ArticleTag articleTag);
    public List<ArticleTag> queryAllArticleTag(Integer articleId);
}
