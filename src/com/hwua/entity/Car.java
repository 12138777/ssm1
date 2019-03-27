package com.hwua.entity;

public class Car {
    private Integer car_id;
    private Integer user_id;
    private Integer goods_id;
    private Integer counts;

    public Car() {
    }

    public Car(Integer car_id, Integer user_id, Integer goods_id, Integer counts) {
        this.car_id = car_id;
        this.user_id = user_id;
        this.goods_id = goods_id;
        this.counts = counts;
    }

    public Integer getCar_id() {
        return car_id;
    }

    public void setCar_id(Integer car_id) {
        this.car_id = car_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(Integer goods_id) {
        this.goods_id = goods_id;
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    @Override
    public String toString() {
        return "Car{" +
                "car_id=" + car_id +
                ", user_id=" + user_id +
                ", goods_id=" + goods_id +
                ", counts=" + counts +
                '}';
    }
}