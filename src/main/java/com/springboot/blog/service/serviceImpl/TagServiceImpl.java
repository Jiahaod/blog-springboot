package com.springboot.blog.service.serviceImpl;

import com.springboot.blog.mapper.TagMapper;
import com.springboot.blog.entity.Tag;
import com.springboot.blog.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagServiceImpl implements TagService {

    @Autowired
    private TagMapper tagMapper;

    public void setTagMapper(TagMapper tagMapper) {
        this.tagMapper = tagMapper;
    }

    public void addTag(Tag tag) {
        tagMapper.addTag(tag);
    }

    public void deleteTag(Integer tagId) {
        tagMapper.deleteTag(tagId);
    }

    public void updateTag(Tag tag) {
        tagMapper.updateTag(tag);
    }

    public List<Tag> queryAllTag() {
        return tagMapper.queryAllTag();
    }

    public Tag queryTagByName(String tagName) {
        return tagMapper.queryTagByName(tagName);
    }

    public Tag queryTagById(int tagId) {
        return tagMapper.queryTagById(tagId);
    }
}
