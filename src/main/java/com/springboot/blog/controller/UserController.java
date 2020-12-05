package com.springboot.blog.controller;

import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.Category;
import com.springboot.blog.entity.Tag;
import com.springboot.blog.service.serviceImpl.*;
import freemarker.core.JSONOutputFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("/admin")
@Controller
public class UserController {

    @Autowired
    ArticleServiceImpl articleService;

    @Autowired
    TagServiceImpl tagService;

    @Autowired
    CategoryServiceImpl categoryService;




    @GetMapping("/loginAction")
    public ModelAndView admin() {
        ModelAndView modelAndView = new ModelAndView("/backstage/login");


        return modelAndView;
    }

    @RequestMapping("/login")
    public String admin(HttpSession session,
                        @RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Model model) {



        if("root".equals(username) && "123456".equals(password))
        {
            session.setAttribute("userLoginInfo", username);
            model.addAttribute("username", username);
            return "redirect:/admin/home";
        }
        return "redirect:/admin/loginAction";

    }

    @GetMapping("/home")
    public ModelAndView articleHome() {
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categoryList = categoryService.queryAllCategories();
        System.out.println(tagList);
        ModelAndView modelAndView = new ModelAndView("/backstage/index");
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("categories", categoryList);
        modelAndView.addObject("articleSize", articleList.size());
        modelAndView.addObject("tagSize", tagList.size());
        modelAndView.addObject("categorySize", categoryList.size());
        return modelAndView;
    }

    @RequestMapping("/console")
    public ModelAndView console() {
        List<Article> articleList = articleService.queryAllArticles();
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categoryList = categoryService.queryAllCategories();
        ModelAndView modelAndView = new ModelAndView("/adminOp/console");
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("categories", categoryList);
        modelAndView.addObject("articleSize", articleList.size());
        modelAndView.addObject("tagSize", tagList.size());
        modelAndView.addObject("categorySize", categoryList.size());
        return modelAndView;
    }

}
