package com.springboot.blog.service;

import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.Category;

import java.util.List;

public interface CategoryService {
    public void addCategory(Category category);

    public void deleteCategory(Integer categoryId);

    public void updateCategory(Category category);

    public List<Category> queryAllCategories();

    public Category queryCategoryByName(String categoryName);

    public Category queryCategoryById(int categoryId);

    public Integer queryMaxCategoryId();
}
