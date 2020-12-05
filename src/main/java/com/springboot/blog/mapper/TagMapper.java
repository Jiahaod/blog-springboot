package com.springboot.blog.mapper;

import com.springboot.blog.entity.Tag;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface TagMapper {
    public void addTag(Tag tag);

    public void deleteTag(Integer tagId);

    public void updateTag(Tag tag);

    public List<Tag> queryAllTag();

    public Tag queryTagByName(String tagName);

    public Tag queryTagById(int TagId);

}
