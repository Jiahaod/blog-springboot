package com.springboot.blog.mapper;

import com.springboot.blog.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface CategoryMapper {
    public void addCategory(Category category);

    public void deleteCategory(Integer categoryId);

    public void updateCategory(Category category);

    public List<Category> queryAllCategories();

    public Category queryCategoryByName(String categoryName);

    public Category queryCategoryById(int CategoryId);

    public Integer queryMaxCategoryId();
}
