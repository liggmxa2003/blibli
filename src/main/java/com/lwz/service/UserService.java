package com.lwz.service;

import com.lwz.pojo.User;

public interface UserService {

    public User checkUser(String username, String password);

    //注册
    public boolean registerUser(User user);
}
