package com.hwua.entity;

public class Goods {
    private Integer goods_id;
    private String goods_name;
    private Double goods_price;
    private String goods_info;
    private String goods_img;
    private Integer goods_invento;
    private Integer goods_sales;
    private Integer goods_type;

    public Goods() {
    }

    public Goods(Integer goods_id, String goods_name, Double goods_price, String goods_info, String goods_img, Integer goods_invento, Integer goods_sales, Integer goods_type) {
        this.goods_id = goods_id;
        this.goods_name = goods_name;
        this.goods_price = goods_price;
        this.goods_info = goods_info;
        this.goods_img = goods_img;
        this.goods_invento = goods_invento;
        this.goods_sales = goods_sales;
        this.goods_type = goods_type;
    }

    public Integer getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(Integer goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public Double getGoods_price() {
        return goods_price;
    }

    public void setGoods_price(Double goods_price) {
        this.goods_price = goods_price;
    }

    public String getGoods_info() {
        return goods_info;
    }

    public void setGoods_info(String goods_info) {
        this.goods_info = goods_info;
    }

    public String getGoods_img() {
        return goods_img;
    }

    public void setGoods_img(String goods_img) {
        this.goods_img = goods_img;
    }

    public Integer getGoods_invento() {
        return goods_invento;
    }

    public void setGoods_invento(Integer goods_invento) {
        this.goods_invento = goods_invento;
    }

    public Integer getGoods_sales() {
        return goods_sales;
    }

    public void setGoods_sales(Integer goods_sales) {
        this.goods_sales = goods_sales;
    }

    public Integer getGoods_type() {
        return goods_type;
    }

    public void setGoods_type(Integer goods_type) {
        this.goods_type = goods_type;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goods_id=" + goods_id +
                ", goods_name='" + goods_name + '\'' +
                ", goods_price=" + goods_price +
                ", goods_info='" + goods_info + '\'' +
                ", goods_img='" + goods_img + '\'' +
                ", goods_invento=" + goods_invento +
                ", goods_sales=" + goods_sales +
                ", goods_type=" + goods_type +
                '}';
    }
}
