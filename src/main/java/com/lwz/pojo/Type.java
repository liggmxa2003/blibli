package com.lwz.pojo;



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
public class Type {

    // 标记该字段为主键

    private Long id;
    private String name;

    // 定义一个私有的blogs列表，用于存储Anime对象
    // 初始化时创建一个空的ArrayList，避免在添加元素时的空指针异常
    private List<Anime> anime = new ArrayList<>();
}
