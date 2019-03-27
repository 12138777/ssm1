package com.hwua.service;

import com.hwua.entity.OrderDetail;
import com.hwua.entity.Orders;

import java.util.List;

public interface OrdersService {
    public int insertOrders(Orders orders, List<OrderDetail> orderDetails,int[] carids);
}

