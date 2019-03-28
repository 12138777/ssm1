package com.hwua.controller;

import com.alibaba.fastjson.JSONObject;
import com.hwua.entity.Car;
import com.hwua.entity.User;
import com.hwua.service.CarService;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/car")
public class CarController {

    @Autowired
    CarService carService;

    @RequestMapping(value = "/addCar", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String addCar(int goods_id, int counts, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Car car = new Car(null, user.getUser_id(), goods_id, counts);
        int i = carService.addCar(car);
        JSONObject obj = new JSONObject();
        obj.put("res", i == 1 ? "success" : "failure");
        return obj.toJSONString();
    }

    @RequestMapping("/queryCar")
    public ModelAndView queryCar(HttpSession session, HttpServletResponse resp) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user==null){
            resp.sendRedirect("/ssm1/jsp/login.jsp");
            return null;
        }else {
        List<Map<String, Object>> cars = carService.selectCarByUserId(user.getUser_id());
        ModelAndView mv = new ModelAndView("car");
        mv.addObject("cars", cars);
        return mv;
        }
    }

    @RequestMapping(value = "/updateCarCount")
    @ResponseBody
    public String add(int car_id, int counts) {
        Car car = new Car(car_id, null, null, counts);
        int i = carService.updateCarCounts(car);
        JSONObject obj = new JSONObject();
        obj.put("res", i == 1 ? "success" : "failure");
        return obj.toJSONString();
    }

    @RequestMapping("/deleteCar")
    @ResponseBody
    public String deleteCar(int car_id) {
        int i = carService.deleteCar(car_id);
        JSONObject obj = new JSONObject();
        obj.put("res", i == 1 ? "success" : "failure");
        return obj.toJSONString();
    }

}
