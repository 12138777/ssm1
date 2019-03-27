<%--
  Created by IntelliJ IDEA.
  User: qin
  Date: 2019/3/14
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="comm.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title>登陆</title>
    <link href="${path}/static/css/base.css" rel="stylesheet" type="text/css">
    <link href="${path}/static/css/css.css" rel="stylesheet" type="text/css">
    <script src="${path}/static/js/jquery-2.1.1.min.js"></script>
    <script src="${path}/static/jss/login.js"></script>
    <style>
        .tab {
            overflow: hidden;
            margin-top: 20px;
            margin-bottom: -1px;
        }

        .tab li {
            display: block;
            float: left;
            width: 100px;
            padding: 10px 20px;
            cursor: pointer;
            border: 1px solid #ccc;
        }

        .tab li.on {
            background: #90B831;
            color: #FFF;
            padding: 10px 20px;
        }

        .conlist {
            padding: 30px;
            border: 1px solid #ccc;
            width: 300px;
        }

        .conbox {
            display: none;
        }
    </style>
    <script>
        $(function () {
            $(".tab li").each(function (i) {
                $(this).click(function () {
                    $(this).addClass("on").siblings().removeClass("on");
                    $(".conlist .conbox").eq(i).show().siblings().hide();
                })
            })
        })
    </script>
</head>
<%----------------------------------------------------------------------------%>
<body>
<div class="login-top">
    <div class="wrapper">
        <div class="fl font30">LOGO</div>
        <div class="fr">您好，欢迎为生活充电在线！</div>
    </div>
</div>
<div class="l_main">
    <div class="l_bttitle2">
        <!-- <h2>登录</h2>-->
        <h2><a href="${path}/index.jsp">< 返回首页</a></h2>
    </div>
    <div class="loginbox fl">
        <div class="tab">
            <ul>
                <li class="on">我是买家</li>
                <li>我是卖家</li>
            </ul>
        </div>
        <div class="conlist">
            <div class="conbox" style="display:block;">
                <p>
                    <input type="text" class="loginusername" id="username" name="user_username" >
                </p>
                <span id="usernamespan"></span>
                <p>
                    <input type="password" class="loginuserpassword" id="password" name="user_password">
                </p>
                <span id="passwordspan"></span>
                <p><span class="fl fntz14 margin-t10"><a href="${path}/jsp/注册.jsp" style="color:#ff6000">立即注册</a></span><span
                        class="fr fntz12 margin-t10"><a href="#">忘记密码？</a></span></p>
                <p>
                    <input type="button" class="loginbtn" value="登  录" onclick="login()">
                </p>
            </div>
            <div class="conbox">
                <p>
                    <input type="text" class="loginusername">
                </p>
                <p>
                    <input type="password" class="loginuserpassword">
                </p>
                <p><span class="fl fntz14 margin-t10"><a href="${path}/jsp/注册.jsp" style="color:#ff6000">立即注册</a></span><span
                        class="fr fntz12 margin-t10"><a href="#">忘记密码？</a></span></p>
                <p>
                    <input type="button" class="loginbtn" value="登  录" onclick="login()" >
                </p>
            </div>
        </div>
    </div>
    <div class="fr margin-r100 margin-t45"><img src="${path}/static/images/login-pic.jpg" width="507" height="325"></div>
</div>
</body>
</html>
