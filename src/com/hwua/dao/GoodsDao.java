package com.hwua.dao;

import com.hwua.entity.Goods;

import java.util.List;

public interface GoodsDao {
    public List<Goods> selectAllGoods();
    public Goods selectGoodsById(int goods_id);
}
