<%--
  Created by IntelliJ IDEA.
  User: qin
  Date: 2019/3/19
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="comm.jsp" %>
<html>
<head>
    <title>Title</title>
    <link href="${path}/static/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/static/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/static/css/css.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/static/css/style1.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="${path}/static/js/jquery-1.8.3.min.js"></script>
    <script src="${path}/static/js/jquery.simpleGal.js"></script>
    <script type="text/javascript" src="${path}/static/js/jquery.imagezoom.min.js"></script>
    <script src="${path}/static/jss/details.js"></script>
</head>
<body>
<%@include file="top.jsp" %>
<div class="clear">&nbsp;</div>
<div class="sup-wid">
    <div class="supplie-top">
        <div class="clear">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="nav">
                <tr>
                    <td align="center"><a href="#">供应商首页</a></td>
                    <td align="center"><a href="#">全部产品</a></td>
                    <td align="center"><a href="#">企业介绍</a></td>
                    <td align="center"><a href="#">最新产品</a></td>
                    <td align="center"><a href="#">热销产品</a></td>
                    <td align="center"><a href="#">促销产品</a></td>
                </tr>
            </table>
        </div>
        <div class=" clear bread"><a href="#">首页</a> <span class="pipe">&gt;</span> <a href="#">某供应商</a> <span
                class="pipe">&gt;</span> <a href="#">某产品</a></div>
    </div>
    <div class="pro_detail">
        <div class="pro_detail_img float-lt">
            <div class="gallery">
                <div class="tb-booth tb-pic tb-s310"><a href="images/01.jpg">
                    <input type="hidden" id="goodid" value="${goods.goods_id}">
                    <input type="hidden" id="user" value="${sessionScope.user}">
                    <img src="${path}${goods.goods_img}" alt="展品细节展示放大镜特效" rel="${path}/script/images/01.jpg" class="jqzoom"/></a></div>
            </div>
            <script type="text/javascript">
                $(function () {
                    $("#h1").toggle(function () {
                        $("#h1").css("background-image", "url('${path}/static/images/iconfont-xingxingman_add.png')");
                    }, function () {
                        $("#h1").css("background-image", "url('${path}/static/images/iconfont-xingxingman_add.png') ");
                    })
                })

            </script>
            <input type="button" value="加入收藏" id="h1" class="addcart" onclick="ShowDiv('MyDiv2','fade2')"/>
        </div>
        <div class="float-lt pro_detail_con">
            <div class="pro_detail_tit">${goods.goods_name}</div>
            <div class="pro_detail_ad">${goods.goods_info}</div>
            <div class="pro_detail_score margin-t20">
                <ul>
                    <li class="margin-r20">评分</li>
                </ul>
                <ul>
                    <li style="width:16px; height:16px;"><img src="${path}/static/images/iconfont-xingxingman.png"
                                                              width="16" height="16"/></li>
                    <li style="width:16px; height:16px;"><img src="${path}/static/images/iconfont-xingxingman.png"
                                                              width="16" height="16"/></li>
                    <li style="width:16px; height:16px;"><img src="${path}/static/images/iconfont-xingxingman.png"
                                                              width="16" height="16"/></li>
                    <li style="width:16px; height:16px;"><img src="${path}/static/images/iconfont-xingxingman.png"
                                                              width="16" height="16"/></li>
                    <li style="width:16px; height:16px;"><img src="${path}/static/images/iconfont-xingxingkong.png"
                                                              width="16" height="16"/></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="pro_detail_price  margin-t20"><span class="margin-r20">市场价</span><span
                    style=" font-size:16px"><s>￥450.00</s></span></div>
            <div class="clear"></div>
            <div class="pro_detail_act margin-t20 fl"><span class="margin-r20">售价</span><span
                    style="font-size:26px; font-weight:bold; color:#dd514c;">￥${goods.goods_price}</span></div>
            <div class="clear"></div>
            <div class="act_block margin-t5"><span>本商品可使用9999积分抵用￥9.99元</span></div>
            <div class="pro_detail_number margin-t30">
                <div class="margin-r20 float-lt">数量</div>
                <div class="">
                    <input type="button" class="jian" onclick="mins()">
                    <input type="text" id="count" value="1" class="float-lt choose_input"/>
                    <input type="button" class="jia" onclick="add()">
                    <span>&nbsp;盒</span> <span>（库存${goods.goods_invento}盒）</span></div>
                <div class="clear"></div>
            </div>
            <div class="guige">
                <div class="margin-r20 float-lt" style="line-height:25px;">规格</div>
                <ul>
                    <li class="guige-cur">规格一</li>
                    <li>规格二</li>
                    <li>规格三</li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="pro_detail_number margin-t20">
                <div class="margin-r20 float-lt">月成交量：<span
                        class="colorred"><strong>${goods.goods_sales}</strong></span></div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <div class="pro_detail_btn margin-t30">
                <ul>
                    <li class="pro_detail_shop">
                        <a href="pay1.html">立即购买</a></li>
                    <li >
                        <input class="pro_detail_add" type="button" value="加入我的购物车" onclick="addCar()">
                    </li>
                </ul>
            </div>
        </div>
        <div class="float-rt pro_right">
        </div>
    </div>
    <div class="clear"></div>
    <script>
        $(function () {
            $(".pro_tab li").each(function (i) {
                $(this).click(function () {
                    $(this).addClass("cur").siblings().removeClass("cur");
                    $(".conlist .conbox").eq(i).show().siblings().hide();
                })
            })
        })
    </script>
    <div class="pro_con margin-t55" style="overflow:hidden;">
        <div class="pro_tab">
            <ul>
                <li class="cur">产品介绍</li>
                <li>规格及包装</li>
                <li>评价</li>
            </ul>
        </div>
        <div class="conlist">
            <div class="conbox" style="display:block;">1</div>
            <div class="conbox">2</div>
            <div class="conbox">
                <div class="pro_judge">
                    <ul>
                        <li class="cur">
                            <input name="RadioGroup1" type="radio" value="" checked="checked" id="RadioGroup1_0"/>
                            全部（100）
                        </li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_1"/>
                            好评（80）
                        </li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_2"/>
                            中评（10）
                        </li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_3"/>
                            差评（10）
                        </li>
                    </ul>
                    <table width="100%" border="0">
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="${path}/static/images/01_mid.jpg" width="60" height="60"
                                    class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="helper">
        <div class="mod">
            <div class="mod-wrap">
                <h4><img src="${path}/static/images/h1.png" width="60" height="60"/><span>新手上路</span></h4>
            </div>
        </div>
        <div class="mod">
            <div class="mod-wrap">
                <h4><img src="${path}/static/images/h2.png" width="60" height="60"/><span>如何支付</span></h4>
            </div>
        </div>
        <div class="mod">
            <div class="mod-wrap">
                <h4><img src="${path}/static/images/h3.png" width="60" height="60"/><span>配送运输</span></h4>
            </div>
        </div>
        <div class="mod mod-last">
            <div class="mod-wrap">
                <h4><img src="${path}/static/images/h4.png" width="60" height="60"/><span>售后服务</span></h4>
            </div>
        </div>
        <div class="mod mod-last">
            <div class="mod-wrap">
                <h4><img src="${path}/static/images/h5.png" width="60" height="60"/><span>联系我们</span></h4>
            </div>
        </div>
    </div>

</div>

<div class="clear">&nbsp;</div>

<div class="fri-link-bg">
    <div class="fri-link">
        <div class="logo float-lt margin-r20"><img src="${path}/static/images/fo-logo.jpg" width="152" height="81"/>
        </div>
        <ul class="link-add float-lt ma">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
    </div>
</div>

<div class="copyright">
    <div class="copyright-bg">
        <div class="hotline">为生活充电在线 <span>招商热线：****-********</span> 客服热线：400-******</div>
        <div class="hotline co-ph">
            <p>版权所有Copyright ©***************</p>
            <p>*ICP备***************号 不良信息举报</p>
            <p>总机电话：****-*********/194/195/196 客服电话：4000****** 传 真：********
        </div>
    </div>
</div>
</body>
</html>
