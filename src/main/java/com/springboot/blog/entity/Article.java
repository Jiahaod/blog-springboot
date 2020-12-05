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
public class Article {
    private Integer articleId;
    private String title;
    private String brief;
    private String author;
    private String logo;
    private String content;
    private Date addTime;
    private Date updateTime;
    private Integer hits;
    private Integer loveNum;
}
