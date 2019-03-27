package com.hwua.controller;

import com.hwua.entity.User;
import com.hwua.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login", produces = "text/html;charset=UTF-8")
    @ResponseBody//ajax请求
    public String login(String user_username, String user_password,HttpSession session) {
        User user = userService.selectUser(user_username, user_password);
        if(user!=null){
            session.setAttribute("user",user);
        }
        return user==null?"登录失败":"登录成功";
    }
    @RequestMapping(value = "/register", produces = "text/html;charset=UTF-8")
    @ResponseBody
    private String register(String user_username, String user_password, String auth, HttpSession httpSession) {

        String rand = (String) httpSession.getAttribute("rand");
        if (!rand.equalsIgnoreCase(auth)) {
            return "验证码输入有误";
        } else {
            User user = new User(null, user_username, user_password);
            String s = userService.insertUser(user);
            return s;
        }

    }
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session){
        session.setAttribute("user",null);
        ModelAndView mv=new ModelAndView("login");
        return mv;
    }
}
