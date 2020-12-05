package com.springboot.blog.service.serviceImpl;

import com.springboot.blog.mapper.CategoryMapper;
import com.springboot.blog.entity.Article;
import com.springboot.blog.entity.Category;
import com.springboot.blog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;

    public void setCategoryMapper(CategoryMapper categoryMapper) {
        this.categoryMapper = categoryMapper;
    }

    public void addCategory(Category category) {
        categoryMapper.addCategory(category);
    }

    public void deleteCategory(Integer categoryId) {
        categoryMapper.deleteCategory(categoryId);
    }

    public void updateCategory(Category category) {
        categoryMapper.updateCategory(category);
    }

    public List<Category> queryAllCategories() {
        return categoryMapper.queryAllCategories();
    }

    public Category queryCategoryByName(String categoryName) {
        return categoryMapper.queryCategoryByName(categoryName);
    }

    public Category queryCategoryById(int categoryId) {
        return categoryMapper.queryCategoryById(categoryId);
    }

    public Integer queryMaxCategoryId() {
        return categoryMapper.queryMaxCategoryId();
    }
}
