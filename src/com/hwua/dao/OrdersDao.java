package com.hwua.dao;

import com.hwua.entity.OrderDetail;
import com.hwua.entity.Orders;

public interface OrdersDao {

    public int insertOrders(Orders orders);

    public int insertOrdersDetail(OrderDetail orderDetail);



}
