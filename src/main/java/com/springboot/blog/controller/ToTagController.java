package com.springboot.blog.controller;

import com.github.pagehelper.PageHelper;
import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.Category;
import com.springboot.blog.entity.Tag;
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

@Controller
@RequestMapping("/admin")
public class ToTagController {
    @Autowired
    ArticleServiceImpl articleService;

    @Autowired
    ArticleTagServiceImpl articleTagService;

    @Autowired
    ArticleCategoryServiceImpl articleCategoryService;

    @Autowired
    TagServiceImpl tagService;

    @Autowired
    CategoryServiceImpl categoryService;

    @RequestMapping("/tagList/{pageNum}")
    public ModelAndView categoryList(@PathVariable("pageNum") Integer pageNum) {
        List<Article> articleList = articleService.queryAllArticles();
        PageHelper.startPage(pageNum, 10);
        List<Tag> tagList = tagService.queryAllTag();
        List<Category> categoryList = categoryService.queryAllCategories();

        List<Tag> tags = tagService.queryAllTag();
        Integer size = tags.size();

        if(size%10 == 0) {
            size = size/10;
        } else {
            size = size/10 + 1;
        }
        ModelAndView modelAndView = new ModelAndView("/adminOp/ToTag/tagList");
        modelAndView.addObject("tags", tagList);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("categories", categoryList);
        modelAndView.addObject("size", size);
        modelAndView.addObject("now", pageNum);

        return modelAndView;
    }

    @RequestMapping(value = "/addTag")
    public String addTag(@RequestParam("tagName")String tagName,
                              @RequestParam("brief")String brief) {

        Tag tag = new Tag();
        tag.setTagName(tagName);
        tag.setBrief(brief);
        tagService.addTag(tag);
        return "redirect:/admin/tagList";
    }

    @RequestMapping(value = "/addTagAction")
    public ModelAndView addArticleAction() {

        List<Tag> tagList = tagService.queryAllTag();
        ModelAndView modelAndView = new ModelAndView("/adminOp/ToTag/addTag");

        return modelAndView;
    }
    @RequestMapping("/updateTag/{id}")
    public String updateTag(@RequestParam("tagName")String tagName,
                            @RequestParam("brief")String brief,
                            @PathVariable("id")Integer id) {
        Tag tag = new Tag();
        tag.setBrief(brief);
        tag.setTagName(tagName);
        tag.setTagId(id);
        tagService.updateTag(tag);
        return "redirect:/admin/tagList";
    }

    @GetMapping("/updateTagAction/{id}")
    public ModelAndView updateTagAction(@PathVariable("id")Integer id) {
        Tag tag = tagService.queryTagById(id);
        ModelAndView modelAndView = new ModelAndView("/adminOp/ToTag/updateTag");
        modelAndView.addObject("tag", tag);
        return modelAndView;
    }

    @GetMapping("/deleteTagAction/{id}")
    public String deleteTag(@PathVariable("id")Integer id) {

        tagService.deleteTag(id);

        return "redirect:/admin/tagList";
    }
}
