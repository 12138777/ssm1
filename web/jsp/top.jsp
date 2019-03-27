<%--
  Created by IntelliJ IDEA.
  User: qin
  Date: 2019/3/18
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="comm.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>页头</title>
    <script type="text/javascript">
        function logout(){
            window.location.replace("${path}/user/logout");
        }
    </script>

</head>
<body>
<div id="header_top">
    <div id="top">
        <div class="Inside_pages">
            <div class="Collection">
                <c:if test="${sessionScope.user.user_username==null}">
                    <a href="${path}/jsp/login.jsp" class="green">请登录</a>
                    <a href="${path}/jsp/注册.jsp" class="green">免费注册</a>
                </c:if>
                <c:if test="${sessionScope.user.user_username!=null}">
                    欢迎您:${sessionScope.user.user_username}
                    <a href="javascript:void(0)" onclick="logout()">退出登录</a>
                </c:if>
            </div>
            <div class="hd_top_manu clearfix">
                <ul class="clearfix">
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="${path}/index.jsp">首页</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="#">我的小充</a> </li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">消息中心</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">商品分类</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">我的购物车</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="header"  class="header page_style">
        <div class="logo"><a href="${path}/index.jsp"><img src="${path}/static/images/logo.png" /></a></div>
        <!--结束图层-->
        <div class="Search">
            <div class="search_list">
                <ul>
                    <li class="current"><a href="#">产品</a></li>
                    <li><a href="#">信息</a></li>
                </ul>
            </div>
            <div class="clear search_cur">
                <input name="searchName" id="searchName" class="search_box" onkeydown="keyDownSearch()" type="text">
                <input name="" type="submit" value="搜 索"  class="Search_btn"/>
            </div>
        </div>
        <!--购物车样式-->
        <div class="hd_Shopping_list" id="Shopping_list">
            <div id="car" class="s_cart"><a href="${path}/car/queryCar">我的购物车</a> <i class="ci-right">&gt;</i></div>

        </div>
    </div>
    <!--菜单栏-->
    <div class="Navigation" id="Navigation">
        <ul class="Navigation_name">
            <li><a href="Home.html">首页</a></li>
            <li class="hour"><span class="bg_muen"></span><a href="#">半小时生活圈</a></li>
            <li><a href="#">你身边的超市</a></li>
            <li><a href="#">预售专区</a></li>
            <li><a href="products_list.html">商城</a></li>

            <li><a href="#">好评商户</a></li>
            <li><a href="#">热销活动</a></li>
            <li><a href="Brands.html">联系我们</a></li>
        </ul>
    </div>
</div>

</body>
</html>
