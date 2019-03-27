<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: qin
  Date: 2019/3/20
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="comm.jsp" %>
<html>
<head>
    <title>ShoppingCar</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="${path}/static/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/static/css/style.css" rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" type="text/css" href="${path}/static/res/static/css/main.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/res/layui/css/layui.css">
    <script type="text/javascript" src="${path}/static/res/layui/layui.js"></script>

    <script src="${path}/static/jss/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="${path}/static/jss/car.js?num=<%=new Date()%>" type="text/javascript"></script>
    <%--<script src="${path}/static/jss/a.js?num=<%=new Date()%>" type="text/javascript"></script>--%>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
<%@include file="top.jsp" %>


<div class="content content-nav-base shopcart-content">
    <div class="banner-bg w1200">
    </div>
    <div class="cart w1200">
        <div class="cart-table-th">
            <div class="th th-chk">
                <div class="select-all">
                    <div class="cart-checkbox">
                        <input id="checkall" type="checkbox">
                    </div>
                    <label>&nbsp;&nbsp;全选</label>
                </div>
            </div>
            <div class="th th-item">
                <div class="th-inner">
                    商品
                </div>
            </div>
            <div class="th th-price">
                <div class="th-inner">
                    单价
                </div>
            </div>
            <div class="th th-amount">
                <div class="th-inner">
                    数量
                </div>
            </div>
            <div class="th th-sum">
                <div class="th-inner">
                    小计
                </div>
            </div>
            <div class="th th-op">
                <div class="th-inner">
                    操作
                </div>
            </div>
        </div>
        <div class="OrderList">
            <div class="order-content" id="list-cont">
                <c:forEach items="${cars}" var="cars">
                    <ul class="item-content layui-clear">
                        <li class="th th-chk">
                            <div class="select-all">
                                <div class="cart-checkbox">
                                    <input type="hidden" class="goodid" value="${cars.goods_id}">
                                    <input class="CheckBoxShop check item" type="checkbox">
                                </div>
                            </div>
                        </li>
                        <li class="th th-item">
                            <div class="item-cont">
                                <a href="#"><img src= ${path}${cars.goods_img}></a>
                                <div class="text">
                                    <div class="title">${cars.goods_name}</div>
                                    <p><span>${cars.goods_info}</span></p>
                                </div>
                            </div>
                        </li>
                        <li class="th th-price">
                            <span class="th-su" title="price">${cars.goods_price}</span>
                        </li>
                        <li class="th th-amount">
                            <div class="box-btn layui-clear">
                                <input type="hidden" class="car_id" value="${cars.car_id}">
                                <input class="less layui-btn mins" type="button" value="-">
                                <input class="Quantity-input count" type="text" value="${cars.counts}">
                                <input class="add layui-btn add" type="button" value="+">
                            </div>
                        </li>
                        <li class="th th-sum xiaoji">
                            ${cars.goods_price*cars.counts}
                        </li>
                        <li class="th th-op">
                            <a class="dele-btn" href="javascript:void(0)" onclick="del('${cars.car_id}')">删除</a>
                        </li>
                    </ul>
                </c:forEach>

            </div>
        </div>

        <div class="FloatBarHolder layui-clear">
            <div class="th th-chk">
                <div class="select-all">
                    <div class="cart-checkbox">
                    </div>
                    <label>&nbsp;&nbsp;已选<span class="Selected-pieces">0</span>件</label>
                </div>
            </div>
            <div class="th batch-deletion">
                <span class="batch-dele-btn">批量删除</span>
            </div>
            <div class="th Settlement">
                <button class="layui-btn" onclick="jiesuan()">结算</button>
            </div>
            <div class="th total">
                <p>应付：<span id="total" class="pieces-total"></span>元</p>
            </div>
        </div>
    </div>
</div>


<%@include file="bottom.jsp" %>
</body>
</html>
