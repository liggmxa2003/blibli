package com.lwz.service;

import com.lwz.pojo.Type;

import java.util.List;

public interface TypeService {

    int saveType(Type type);

    Type getType(Long id);

    Type getTypeByName(String name);

    List<Type> getAllType();

    List<Type> getBlogType();  //首页右侧展示type对应的番剧数量

    int updateType(Type type);

    int deleteType(Long id);
}
