package com.hwua.service;

import com.hwua.entity.Goods;

import java.util.List;

public interface GoodsService {
    public List<Goods> selectAllGoods();
    public Goods selectGoodsById(int goods_id);
}
