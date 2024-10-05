package com.lwz.pojo;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


//自动生成 getter、setter、equals、hashcode 和 toString 方法注解
@Data
//有参构造方法注解
@AllArgsConstructor
//无参构造方法注解
@NoArgsConstructor
public class Anime {



    private Long id;
    private String title;
    private String content;
    private String firstPicture;
    private String flag;
    private Integer views;
    private boolean appreciation;
    private boolean shareStatement;
    private boolean commentabled;
    private boolean published;
    private boolean recommend;
    private Date createTime;
    private Date updateTime;


    //获取多个标签的id
    private String tagId;
    private String description;

    private Type type;
    private User user;

    private List<Tag> tags = new ArrayList<>();
    private List<Comment> comments = new ArrayList<>();
}
