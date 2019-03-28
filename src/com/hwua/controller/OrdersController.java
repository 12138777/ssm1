package com.hwua.controller;

import com.hwua.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/orders")
public class OrdersController {

    @Autowired
    OrdersService ordersService;
    @RequestMapping(value = "addorders", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String addOrders(double total,String[] goodids,String[] counts,String[] prices) {
        System.out.println(total);
        for (int i=0;i<goodids.length;i++){
            System.out.println(goodids[i]);
        }
        System.out.println(counts);
        System.out.println(prices);
        return "";
    }

}
