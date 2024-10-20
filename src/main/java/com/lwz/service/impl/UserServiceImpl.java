package com.lwz.service.impl;

import com.lwz.dao.UserDao;
import com.lwz.pojo.User;
import com.lwz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User checkUser(String username, String password) {
        User user = userDao.queryByUsernameAndPassword(username,(password));
        return user;
    }

    @Override
    public boolean registerUser(User user) {
        //判断用户是否已存在
        if (userDao.queryByUsernameAndPassword(user.getUsername(),(user.getPassword())) != null) {
            return false;
        }
        userDao.registerUser(user);
        return true;
    }
}
