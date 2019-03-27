<%--
  Created by IntelliJ IDEA.
  User: qin
  Date: 2019/3/26
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="comm.jsp" %>
<html>
<head>
    <title>订单</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${path}/static/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/static/css/all.css" rel="stylesheet" type="text/css"/>

    <script src="${path}/static/jss/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script></script>
</head>
<body>
<%@include file="top.jsp" %>
<div class="Inside_pages clearfix">
    <div class="left_style">
    </div>
    <div class="right_style">
        <!--内容详细-->
        <div class="title_style"><em></em>订单列表</div>
        <div class="content_style">
            <!--订单管理-->
            <div class="Order_form_style">
                <div class="Order_form_filter">
                    <a href="#" class="on">全部订单</a>
                    <a href="#" class="">代付款</a>
                    <a href="#" class="">代发货</a>
                    <a href="#" class="">待收货</a>
                    <a href="#" class="">退货/退款</a>
                    <a href="#" class="">交易成功</a>
                    <a href="#" class="">交易关闭</a>
                </div>
                <div class="Order_form_list">
                    <table>
                        <thead>
                        <tr>
                            <td class="list_name_title0">商品</td>
                            <td class="list_name_title1">单价(元)</td>
                            <td class="list_name_title2">数量</td>
                            <td class="list_name_title4">实付款(元)</td>
                            <td class="list_name_title5">订单状态</td>
                            <td class="list_name_title6">操作</td>
                        </tr>
                        </thead>
                        <%--开始-----------------%>
                        <tbody>
                        <tr class="Order_info">
                            <td colspan="6" class="Order_form_time">下单时间：2015-12-3
                                | 订单号：445454654654654 <em></em></td>
                        </tr>
                        <tr class="Order_Details">
                            <td colspan="3">
                                <table class="Order_product_style">
                                    <tbody>
                                    <tr>
                                        <td>
                                            <div class="product_name clearfix">
                                                <a href="#" class="product_img"><img src="Products/p_2.jpg" width="80px"
                                                                                     height="80px"></a>
                                                <a href="3">天然绿色多汁香甜无污染水蜜桃</a>
                                                <p class="specification">礼盒装20个/盒</p>
                                            </div>
                                        </td>
                                        <td>5</td>
                                        <td>2</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td class="split_line">100</td>
                            <td class="split_line"><p style="color:#F30">已发货，待收货</p></td>
                            <td class="operating">
                                <a href="#">查看订单</a>
                                <a href="#">查看物流</a>
                                <a href="#">联系客服</a>
                                <a href="#">删除</a>
                            </td>
                        </tr>
                        </tbody>
                        <%--结束------%>

                    </table>
                </div>
            </div>
            </form>
        </div>
    </div>
</div>


<%@include file="bottom.jsp" %>

</body>
</html>
