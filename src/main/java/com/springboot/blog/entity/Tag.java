package com.springboot.blog.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Tag {
    private Integer tagId;

    private String tagName;

    private String brief;

    private Date addTime;

    private Date updateTime;
}
