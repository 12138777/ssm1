package com.hwua.serviceImpl;

import com.hwua.dao.CarDao;
import com.hwua.dao.OrdersDao;
import com.hwua.entity.OrderDetail;
import com.hwua.entity.Orders;
import com.hwua.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    OrdersDao ordersDao;

    @Autowired
    CarDao carDao;

    @Override
    public int insertOrders(Orders orders, List<OrderDetail> orderDetails, int[] carids) {
        int a=0;
        int i = ordersDao.insertOrders(orders);
        Integer ordersid = orders.getOrders_id();
        for (OrderDetail orderDetail:orderDetails){
            orderDetail.setOrders_id(ordersid);
            a+=ordersDao.insertOrdersDetail(orderDetail);
        }
        for (int car_id:carids){
            a+=carDao.deleteCar(car_id);
        }
        return a;
    }

}
