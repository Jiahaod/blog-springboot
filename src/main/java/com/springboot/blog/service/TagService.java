package com.springboot.blog.service;

import com.springboot.blog.entity.Tag;

import java.util.List;

public interface TagService {
    public void addTag(Tag tag);

    public void deleteTag(Integer tagId);

    public void updateTag(Tag tag);

    public List<Tag> queryAllTag();

    public Tag queryTagByName(String tagName);

    public Tag queryTagById(int tagId);
}
