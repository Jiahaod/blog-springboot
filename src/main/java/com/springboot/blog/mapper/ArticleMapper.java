package com.springboot.blog.mapper;

import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ArticleMapper {
    //增
    public void addArticle(Article article);

    //删
    public void deleteArticle(Integer articleId);

    //改
    public void updateArticle(Article article);
    //查
    List<Article> queryAllArticles();

    List<Article> queryArticleByName(String articleName);

    Article queryArticleById(int articleId);

    Integer queryMaxArticleId();

    Category queryCategoryByArticleId(Integer articleId);
}
