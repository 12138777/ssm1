package com.hwua.dao;

import com.hwua.entity.Car;

import java.util.List;
import java.util.Map;

public interface CarDao {
//    查询
    public Car selectCarByUserAndGoods(Car car);
//    添加
    public int insertCar(Car car);
//    更新
    public int  updateCar(Car car);
//    多条查询
    public List<Map<String,Object>> selectCarByUserId(int user_id);
//    更新购物车
    public int  updateCarCounts(Car car);
//    删除商品
    public int deleteCar(int car_id);

}
