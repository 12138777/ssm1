package com.hwua.serviceImpl;

import com.hwua.dao.UserDao;
import com.hwua.entity.User;
import com.hwua.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
//    @Transactional   自动回滚提交
    public User selectUser(String user_username, String user_password) {

        User user = userDao.selectUser(user_username);

        return user;
    }

    @Override
    public String insertUser(User user) {

        Integer number = userDao.insertUser(user);
        if (number == 1) {
            return "注册成功";
        } else {
            return "注册失败";
        }
    }
}












