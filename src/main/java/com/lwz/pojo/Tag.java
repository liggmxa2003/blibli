package com.lwz.pojo;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

//自动生成 getter、setter、equals、hashcode 和 toString 方法注解
@Data
//有参构造方法注解
@AllArgsConstructor
//无参构造方法注解
@NoArgsConstructor
public class Tag {

    private Long id;
    private String name;

    // 定义一个私有的Anime列表，用于存储多个Anime对象
    private List<Anime> anime = new ArrayList<>();
}