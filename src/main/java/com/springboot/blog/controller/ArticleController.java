package com.springboot.blog.controller;

import com.github.pagehelper.PageHelper;
import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.ArticleCategory;
import com.springboot.blog.entity.Category;
import com.springboot.blog.entity.Tag;
import com.springboot.blog.service.serviceImpl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RequestMapping("/article")
@Controller
public class ArticleController {

    @Autowired
    @Qualifier("articleServiceImpl")
    ArticleServiceImpl articleService;

    @Autowired
    @Qualifier("articleTagServiceImpl")
    ArticleTagServiceImpl articleTagService;

    @Autowired
    @Qualifier("articleCategoryServiceImpl")
    ArticleCategoryServiceImpl articleCategoryService;

    @Autowired
    @Qualifier("tagServiceImpl")
    TagServiceImpl tagService;

    @Autowired
    @Qualifier("categoryServiceImpl")
    CategoryServiceImpl categoryService;


    @GetMapping("/articleList/{pageNum}")
    public ModelAndView allBlogs(@PathVariable("pageNum") Integer pageNum) {

        ModelAndView mav = new ModelAndView("/blog2");
        PageHelper.startPage(pageNum, 5);
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categoryList = categoryService.queryAllCategories();
        List<Article> articles = articleService.queryAllArticles();

        Integer size = articles.size();
        if (size % 5 == 0) {
            size = size/5;
        } else {
            size = size/5 + 1;
        }
        mav.addObject("tags", tagList);
        mav.addObject("categories", categoryList);
        mav.addObject("articles", articleList);
        mav.addObject("size", size);
        mav.addObject("now", pageNum);
        mav.addObject("recentArticles", articles);
        mav.addObject("status", 2);

        return mav;
    }
    @GetMapping("/articleDetail/{id}")
    public ModelAndView getBlog(@PathVariable("id") Integer id) {
        ModelAndView modelAndView = new ModelAndView("/article");
        Article article = articleService.queryArticleById(id);
        modelAndView.addObject("article", article);

        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categoryList = categoryService.queryAllCategories();

        ArticleCategory articleCategory = articleCategoryService.queryAllArticleCategory(id);

        Category category = categoryService.queryCategoryById(articleCategory.getCategoryId());

        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("categories", categoryList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("category", category);
        modelAndView.addObject("status", 2);

        return modelAndView;
    }
}
