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

import java.util.List;

@RequestMapping("/admin")
@Controller
public class ToCategoryController {
    @Autowired
    //@Qualifier("articleServiceImpl")
    ArticleServiceImpl articleService;

    @Autowired
    //@Qualifier("articleTagServiceImpl")
    ArticleTagServiceImpl articleTagService;

    @Autowired
    //@Qualifier("articleCategoryServiceImpl")
    ArticleCategoryServiceImpl articleCategoryService;

    @Autowired
    //@Qualifier("tagServiceImpl")
    TagServiceImpl tagService;

    @Autowired
    //@Qualifier("categoryServiceImpl")
    CategoryServiceImpl categoryService;

    @RequestMapping("/categoryList/{pageNum}")
    public ModelAndView categoryList(@PathVariable("pageNum") Integer pageNum) {
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        PageHelper.startPage(pageNum, 10);
        List<Category> categoryList = categoryService.queryAllCategories();
        List<Category> categories = categoryService.queryAllCategories();
        Integer size = categories.size();
        if(size%10 == 0) {
            size = size/10;
        } else {
            size = size/10 + 1;
        }
        ModelAndView modelAndView = new ModelAndView("/adminOp/ToCategory/categoryList");
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("categories", categoryList);
        modelAndView.addObject("size", size);
        modelAndView.addObject("now", pageNum);

        return modelAndView;
    }

    @RequestMapping(value = "/addCategory")
    public String addCategory(@RequestParam("categoryName")String categoryName,
                              @RequestParam("brief")String brief) {

        Category category = new Category();
        category.setCategoryName(categoryName);
        category.setBrief(brief);
        System.out.println(categoryName);
        System.out.println(brief);
        categoryService.addCategory(category);
        System.out.println(category);
        return "redirect:/admin/categoryList/1";
    }

    @RequestMapping(value = "/addCategoryAction")
    public ModelAndView addArticleAction() {

        List<Category> categoryList = categoryService.queryAllCategories();
        ModelAndView modelAndView = new ModelAndView("/adminOp/ToCategory/addCategory");

        return modelAndView;
    }
    @RequestMapping("/updateCategory/{id}")
    public String updateArticle(@RequestParam("categoryName")String categoryName,
                                @RequestParam("brief")String brief,
                                @PathVariable("id")Integer id) {
        Category category = new Category();
        category.setBrief(brief);
        category.setCategoryName(categoryName);
        category.setCategoryId(id);
        categoryService.updateCategory(category);
        return "redirect:/admin/categoryList/1";
    }

    @GetMapping("/updateCategoryAction/{id}")
    public ModelAndView updateArticleAction(@PathVariable("id")Integer id) {
        Category category = categoryService.queryCategoryById(id);
        ModelAndView modelAndView = new ModelAndView("/adminOp/ToCategory/updateCategory");
        modelAndView.addObject("category", category);
        return modelAndView;
    }

    @GetMapping("/deleteCategoryAction/{id}")
    public String deleteCategory(@PathVariable("id")Integer id) {

        categoryService.deleteCategory(id);

        return "redirect:/admin/categoryList/1";
    }
}
