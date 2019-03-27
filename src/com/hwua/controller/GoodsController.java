package com.hwua.controller;

import com.alibaba.fastjson.JSONObject;
import com.hwua.entity.Goods;
import com.hwua.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    GoodsService goodsService;
    @RequestMapping(value = "/getGoods",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String selectAllGoods(){
        List<Goods> goods = goodsService.selectAllGoods();
        String s = JSONObject.toJSONString(goods);
        return s;
    }
    @RequestMapping(value = "detail")


    public ModelAndView selectGoodsById(HttpServletRequest req){
        String s=req.getParameter("goods_id");
        int goods_id = Integer.parseInt(s);
        Goods goods = goodsService.selectGoodsById(goods_id);
        ModelAndView mv=new ModelAndView("details");
        mv.addObject("goods",goods);
        return mv;
    }

}
