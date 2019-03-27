package com.hwua.service;

import com.hwua.entity.Car;

import java.util.List;
import java.util.Map;

public interface CarService {
    public int addCar(Car car);
    public List<Map<String,Object>> selectCarByUserId(int user_id);
    public int  updateCarCounts(Car car);
    public int deleteCar(int car_id);
}
