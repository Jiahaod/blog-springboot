package com.springboot.blog.controller;

import com.springboot.blog.service.serviceImpl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class testController {
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

    @GetMapping("/test")
    //@ResponseBody
    public ModelAndView test() {
        ModelAndView modelAndView = new ModelAndView("/test");
        return modelAndView;
    }
}
