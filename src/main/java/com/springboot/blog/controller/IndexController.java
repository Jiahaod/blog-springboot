package com.springboot.blog.controller;

import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.Category;
import com.springboot.blog.entity.Tag;
import com.springboot.blog.service.serviceImpl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.util.List;

@Controller
public class IndexController {

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

    @GetMapping("/home")
    public ModelAndView index() {

        List<Article> articles = articleService.queryAllArticles();
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categories = categoryService.queryAllCategories();
        Integer size = articles.size();
        ModelAndView modelAndView = new ModelAndView("/unclean/index");
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("recentArticles", articleList);
        modelAndView.addObject("size", size);
        modelAndView.addObject("status", 1);
        return modelAndView;
    }

    @RequestMapping("/aboutMe")
    public ModelAndView aboutMe() {
        List<Article> articles = articleService.queryAllArticles();
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categories = categoryService.queryAllCategories();
        Integer size = articles.size();
        ModelAndView modelAndView = new ModelAndView("/about");
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("recentArticles", articleList);
        modelAndView.addObject("size", size);
        modelAndView.addObject("status", 3);
        return modelAndView;
    }

}
