package com.hwua.entity;

public class OrderDetail {
    private Integer orderdetail_id;
    private Integer orders_id;
    private Integer goods_id;
    private Double goods_price;
    private Integer counts;

    public OrderDetail() {
    }

    public OrderDetail(Integer orderdetail_id, Integer orders_id, Integer goods_id, Double goods_price, Integer counts) {
        this.orderdetail_id = orderdetail_id;
        this.orders_id = orders_id;
        this.goods_id = goods_id;
        this.goods_price = goods_price;
        this.counts = counts;
    }

    public Integer getOrderdetail_id() {
        return orderdetail_id;
    }

    public void setOrderdetail_id(Integer orderdetail_id) {
        this.orderdetail_id = orderdetail_id;
    }

    public Integer getOrders_id() {
        return orders_id;
    }

    public void setOrders_id(Integer orders_id) {
        this.orders_id = orders_id;
    }

    public Integer getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(Integer goods_id) {
        this.goods_id = goods_id;
    }

    public Double getGoods_price() {
        return goods_price;
    }

    public void setGoods_price(Double goods_price) {
        this.goods_price = goods_price;
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "orderdetail_id=" + orderdetail_id +
                ", orders_id=" + orders_id +
                ", goods_id=" + goods_id +
                ", goods_price=" + goods_price +
                ", counts=" + counts +
                '}';
    }
}
