package com.hwua.serviceImpl;

import com.hwua.dao.CarDao;
import com.hwua.entity.Car;
import com.hwua.entity.Goods;
import com.hwua.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CarServiceImpl implements CarService {
    @Autowired
    CarDao carDao;
    @Override
    public int addCar(Car car) {
        Car car1 = carDao.selectCarByUserAndGoods(car);
        int i = 0;
        if (car1 == null) {
            i = carDao.insertCar(car);
        } else {
            i = carDao.updateCar(car);
        }
        return i;
    }

    @Override
    public List<Map<String,Object>> selectCarByUserId(int user_id) {
        List<Map<String,Object>> cars = carDao.selectCarByUserId(user_id);
        return cars;
    }

    @Override
    public int updateCarCounts(Car car) {
        int i = carDao.updateCarCounts(car);
        return i;
    }

    @Override
    public int deleteCar(int car_id) {
        int i = carDao.deleteCar(car_id);
        return i;
    }
}
