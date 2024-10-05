package com.lwz.service.impl;

import com.lwz.dao.UserDao;
import com.lwz.pojo.User;
import com.lwz.service.UserService;
import com.lwz.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    // 注入UserDao依赖，用于操作数据库
    @Autowired
    private UserDao userDao;

    @Override
    public User chechkUser(String username, String password) {
        User user = userDao.queryByUsernameAndPassword(username,(password));
        return user;
    }
}
