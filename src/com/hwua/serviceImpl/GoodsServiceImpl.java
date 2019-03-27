package com.hwua.serviceImpl;

import com.hwua.dao.GoodsDao;
import com.hwua.entity.Goods;
import com.hwua.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    GoodsDao goodsDao;
    @Override
    public List<Goods> selectAllGoods() {
        List<Goods> goodss = goodsDao.selectAllGoods();
        return goodss;
    }

    @Override
    public Goods selectGoodsById(int goods_id) {
        Goods goods = goodsDao.selectGoodsById(goods_id);
        return goods;
    }
}
