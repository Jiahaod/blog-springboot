package com.springboot.blog.controller;


import com.github.pagehelper.PageHelper;
import com.springboot.blog.entity.*;
import com.springboot.blog.service.serviceImpl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class ToArticleController {

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
    public ModelAndView articleList(@PathVariable("pageNum") Integer pageNum) {
        PageHelper.startPage(pageNum, 10);
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categoryList = categoryService.queryAllCategories();
        List<Article> articles = articleService.queryAllArticles();
        Integer size = articles.size();
        if(size%5 == 0) {
            size = size/10;
        } else {
            size = size/10 + 1;
        }
        ModelAndView modelAndView = new ModelAndView("/adminOp/ToArticle/articleList");
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("categories", categoryList);
        modelAndView.addObject("size", size);
        modelAndView.addObject("now", pageNum);

        return modelAndView;
    }


    /*
    * Q：update时更改的内容为多条
    * */
    @RequestMapping("/updateArticle/{id}")
    public String updateArticle(@RequestParam("title")String title,
                                @RequestParam("content")String content,
                                @RequestParam("brief")String brief,
                                @PathVariable("id")Integer id,
                                HttpServletRequest request) {
        Article article = articleService.queryArticleById(id);
        article.setUpdateTime(new Date());
        article.setBrief(brief);
        article.setContent(content);
        article.setTitle(title);
        articleService.updateArticle(article);
        articleTagService.deleteArticleTag(id);

        List<Tag> tagList = tagService.queryAllTag();
        for (Tag tag:tagList) {
            if("on".equals(request.getParameter(("tag"+tag.getTagId())))) {
                ArticleTag articleTag = new ArticleTag();
                articleTag.setArticleId(id);
                articleTag.setTagId(tag.getTagId());
                articleTagService.addArticleTag(articleTag);
            }
        }
        Integer categoryId = Integer.parseInt(request.getParameter("status"));
        ArticleCategory articleCategory = new ArticleCategory();
        articleCategory.setCategoryId(categoryId);
        articleCategory.setArticleId(id);
        articleCategoryService.updateArticleCategory(articleCategory);

        return "redirect:/admin/articleList/1";
    }

    @GetMapping("/updateArticleAction/{id}")
    public ModelAndView updateArticleAction(@PathVariable("id")Integer id) {
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categoryList = categoryService.queryAllCategories();
        Article article = articleService.queryArticleById(id);
        ModelAndView modelAndView = new ModelAndView("/adminOp/ToArticle/updateArticle");
        modelAndView.addObject("article", article);
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("categories", categoryList);

        return modelAndView;
    }

    @RequestMapping(value = "/addArticle")
    public String addArticle(@RequestParam("title")String title,
                             @RequestParam("content")String content,
                             @RequestParam("brief")String brief,
                             HttpServletRequest request) {

        Article article = new Article();
        article.setLogo("logo");
        article.setAuthor("root");
        article.setLoveNum(0);
        article.setHits(0);
        article.setBrief(brief);
        article.setContent(content);
        article.setTitle(title);
        articleService.addArticle(article);

        Integer articleId = articleService.queryMaxArticleId();
        List<Tag> tagList = tagService.queryAllTag();
        for (Tag tag:tagList) {
            if("on".equals(request.getParameter(("tag"+tag.getTagId())))) {
                ArticleTag articleTag = new ArticleTag();
                articleTag.setArticleId(articleId);
                articleTag.setTagId(tag.getTagId());
                articleTagService.addArticleTag(articleTag);
            }
        }
        Integer categoryId = Integer.parseInt(request.getParameter("status"));
        ArticleCategory articleCategory = new ArticleCategory();
        articleCategory.setCategoryId(categoryId);
        articleCategory.setArticleId(articleId);
        articleCategoryService.addArticleCategory(articleCategory);


        return "redirect:/admin/articleList/1";
    }

    @RequestMapping(value = "/addArticleAction")
    public ModelAndView addArticleAction() {
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categoryList = categoryService.queryAllCategories();
        ModelAndView modelAndView = new ModelAndView("addArticle1");
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("categories", categoryList);
        return modelAndView;
    }

    @GetMapping("/deleteArticleAction/{id}")
    public String deleteArticle(@PathVariable("id")Integer id) {

        articleService.deleteArticle(id);
        articleTagService.deleteArticleTag(id);
        articleCategoryService.deleteArticleCategory(id);

        return "redirect:/admin/articleList/1";
    }
}
