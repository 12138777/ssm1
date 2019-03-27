package com.hwua.entity;

import java.util.Date;

public class Orders {
    private Integer orders_id;
    private Integer user_id;
    private Date createDate;
    private String code;
    private Double total;
    private String status;
    private Integer address_id;

    public Orders() {
    }

    public Orders(Integer orders_id, Integer user_id, Date createDate, String code, Double total, String status, Integer address_id) {
        this.orders_id = orders_id;
        this.user_id = user_id;
        this.createDate = createDate;
        this.code = code;
        this.total = total;
        this.status = status;
        this.address_id = address_id;
    }

    public Integer getOrders_id() {
        return orders_id;
    }

    public void setOrders_id(Integer orders_id) {
        this.orders_id = orders_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getAddress_id() {
        return address_id;
    }

    public void setAddress_id(Integer address_id) {
        this.address_id = address_id;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "orders_id=" + orders_id +
                ", user_id=" + user_id +
                ", createDate=" + createDate +
                ", code='" + code + '\'' +
                ", total=" + total +
                ", status='" + status + '\'' +
                ", address_id=" + address_id +
                '}';
    }
}
