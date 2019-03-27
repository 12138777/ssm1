package com.hwua.service;

import com.hwua.entity.User;

public interface UserService {
    public User selectUser(String user_username,String user_password);

    public String insertUser(User user);
}
