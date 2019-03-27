package com.hwua.dao;

import com.hwua.entity.User;

public interface UserDao {
    public User selectUser(String user_username);
    public Integer insertUser(User user);

}
