<%--
  Created by IntelliJ IDEA.
  User: qin
  Date: 2019/3/13
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="jsp/comm.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${path}/static/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <script src="${path}/static/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${path}/static/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="${path}/static/js/common_js.js" type="text/javascript"></script>
    <script src="${path}/static/js/footer.js" type="text/javascript"></script>
    <script src="${path}/static/js/accordion.js" type="text/javascript"></script>
    <script src="${path}/static/js/lrtk.js" type="text/javascript"></script>
    <script src="${path}/static/jss/index.js"></script>
    <title>网站首页</title>

</head>
<%--------------------------------------------------------------%>
<body>
<%--头部--%>
<%@include file="jsp/top.jsp" %>
<!--广告幻灯片样式-->
<div id="slideBox" class="slideBox">
    <div class="hd">
        <ul class="smallUl"></ul>
    </div>
    <div class="bd">
        <ul>
            <li><a href="#" target="_blank">
                <div style="background:url(${path}/static/images/AD/ad-1.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div>
            </a></li>
            <li><a href="#" target="_blank">
                <div style="background:url(${path}/static/images/AD/ad-2.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div>
            </a></li>
            <li><a href="#" target="_blank">
                <div style="background:url(${path}/static/images/AD/ad-3.jpg) no-repeat; background-position:center; width:100%; height:475px;"></div>
            </a></li>
            <li><a href="#" target="_blank">
                <div style="background:url(${path}/static/images/AD/ad-7.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div>
            </a></li>
            <li><a href="#" target="_blank">
                <div style="background:url(${path}/static/images/AD/ad-6.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div>
            </a></li>
        </ul>
    </div>
    <!-- 下面是前/后按钮-->
    <a class="prev" href="javascript:void(0)"></a>
    <a class="next" href="javascript:void(0)"></a>

</div>
<script type="text/javascript">
    jQuery(".slideBox").slide({titCell: ".hd ul", mainCell: ".bd ul", autoPlay: true, autoPage: true});
</script>
</div>
<!--内容样式-->
<div id="mian">
    <div class="clearfix marginbottom">
        <!--产品分类样式-->
        <div class="Menu_style" id="allSortOuterbox">
            <div class="title_name"><em></em>所有商品分类</div>
            <div class="content hd_allsort_out_box_new">
                <ul class="Menu_list">
                    <li class="name">
                        <div class="Menu_name"><a href="product_list.html">茶品类</a> <span>&lt;</span></div>
                        <div class="link_name">
                            <p>
                                <a href="Product_Detailed.html">茅台</a> |
                                <a href="#">五粮液</a> |
                                <a href="#">郎酒</a> |
                                <a href="#">剑南春</a>
                                <a href="Product_Detailed.html">茅台</a> |
                                <a href="#">五粮液</a> |
                                <a href="#">郎酒</a> |
                                <a href="#">剑南春</a>
                            </p>
                        </div>
                        <div class="menv_Detail">
                            <div class="cat_pannel clearfix">
                                <div class="hd_sort_list">
                                    <dl class="clearfix" data-tpc="1">
                                        <dt><a href="#">面膜<i>></i></a></dt>
                                        <dd><a href="#">撕拉面膜</a><a href="#">面膜贴</a><a href="#">免洗面膜</a><a
                                                href="#">水洗面膜</a></dd>
                                    </dl>
                                    <dl class="clearfix" data-tpc="2">
                                        <dt><a href="#">洁面<i>></i></a></dt>
                                        <dd><a href="#">洁面摩丝</a><a href="#">洁面乳 </a><a href="#">洁面啫哩/胶</a><a href="#">面部去角质/磨砂</a><a
                                                href="#">洁面膏/霜</a><a href="#">洁肤皂</a></dd>
                                    </dl>
                                    <dl class="clearfix" data-tpc="3">
                                        <dt><a href="#">化妆水<i>></i></a></dt>
                                        <dd><a href="#"> 喷雾</a><a href="#"> 精华水</a><a href="#"> 柔肤水</a><a
                                                href="#">爽肤水</a><a href="#">收敛水/紧肤水</a></dd>
                                    </dl>
                                    <dl class="clearfix" data-tpc="4">
                                        <dt><a href="#">眼部护理<i>></i></a></dt>
                                        <dd><a href="#"> 眼膜</a><a href="#"> 眼部凝胶</a><a href="#">眼部精华</a><a
                                                href="#">眼霜</a></dd>
                                    </dl>
                                    <dl class="clearfix" data-tpc="4">
                                        <dt><a href="#">眼部护理<i>></i></a></dt>
                                        <dd><a href="#"> 眼膜</a><a href="#"> 眼部凝胶</a><a href="#">眼部精华</a><a
                                                href="#">眼霜</a></dd>
                                    </dl>
                                    <dl class="clearfix" data-tpc="4">
                                        <dt><a href="#">防晒<i>></i></a></dt>
                                        <dd><a href="#"> 眼膜</a><a href="#"> 眼部凝胶</a><a href="#">眼部精华</a><a
                                                href="#">眼霜</a></dd>
                                    </dl>
                                    <dl class="clearfix" data-tpc="4">
                                        <dt><a href="#">唇部护理<i>></i></a></dt>
                                        <dd><a href="#"> 眼膜</a><a href="#"> 眼部凝胶</a><a href="#">眼部精华</a><a
                                                href="#">眼霜</a></dd>
                                    </dl>
                                    <dl class="clearfix" data-tpc="4">
                                        <dt><a href="#">乳液/面霜<i>></i></a></dt>
                                        <dd><a href="#"> 乳液</a><a href="#"> 面霜</a><a href="#">按摩霜</a><a
                                                href="#">面部啫喱</a><a href="#">凝露/凝胶</a></dd>
                                    </dl>
                                </div>
                                <div class="Brands">
                                </div>
                            </div>
                            <!--品牌-->
                        </div>
                    </li>
                    <li class="name">
                        <div class="Menu_name"><a href="#">豆制品类</a><span>&lt;</span></div>
                        <div class="link_name">
                            <a href="Product_Detailed.html"> 面霜</a> | <a href="#">眼霜</a> | <a href="#"> 面膜</a> | <a
                                href="#">护肤套装</a>

                        </div>
                        <div class="menv_Detail">
                            <div class="cat_pannel clearfix">
                            </div>
                        </div>
                    </li>
                    <li class="name">
                        <div class="Menu_name"><a href="#">菌菇类</a><span>&lt;</span></div>
                        <div class="link_name">
                            <a href="Product_Detailed.html"> 面霜</a><a href="#">眼霜</a><a href="#"> 面膜</a><a
                                href="#">护肤套装</a>

                        </div>
                        <div class="menv_Detail">
                            <div class="cat_pannel clearfix">
                            </div>
                        </div>
                    </li>
                    <li class="name">
                        <div class="Menu_name"><a href="#">粮油五谷类</a><span>&lt;</span></div>
                        <div class="link_name">
                            <a href="Product_Detailed.html"> 面霜</a><a href="#">眼霜</a><a href="#"> 面膜</a><a
                                href="#">护肤套装</a>

                        </div>
                        <div class="menv_Detail">
                            <div class="cat_pannel clearfix">
                            </div>
                        </div>
                    </li>
                    <li class="name">
                        <div class="Menu_name"><a href="#">禽蛋类</a><span>&lt;</span></div>
                        <div class="link_name">
                            <a href="Product_Detailed.html"> 面霜</a><a href="#">眼霜</a><a href="#"> 面膜</a><a
                                href="#">护肤套装</a>

                        </div>
                        <div class="menv_Detail">
                            <div class="cat_pannel clearfix">
                            </div>
                        </div>
                    </li>
                    <li class="name">
                        <div class="Menu_name"><a href="#">蔬菜类类</a><span>&lt;</span></div>
                        <div class="link_name">
                            <a href="Product_Detailed.html"> 面霜</a><a href="#">眼霜</a><a href="#"> 面膜</a><a
                                href="#">护肤套装</a>

                        </div>
                        <div class="menv_Detail">
                            <div class="cat_pannel clearfix">
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <script>$("#allSortOuterbox").slide({titCell: ".Menu_list li", mainCell: ".menv_Detail",});</script>
        <!--产品栏切换-->
        <div class="product_list left">
            <div class="slideGroup">
                <div class="parHd">
                    <ul>
                        <li>新品上市</li>
                        <li>超值特惠</li>
                        <li>本期团购</li>
                        <li>产品精选</li>
                        <li>抢先一步</li>
                    </ul>
                </div>
                <div class="parBd">
                    <%--新品上市--%>
                    <div class="slideBoxs">
                        <a class="sPrev" href="javascript:void(0)"></a>
                        <ul>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_11.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_12.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_13.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_15.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                        </ul>
                        <a class="sNext" href="javascript:void(0)"></a>
                    </div><!-- slideBox End -->
                    <%--超值特惠--%>
                    <div class="slideBoxs">
                        <a class="sPrev" href="javascript:void(0)"></a>
                        <ul>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_15.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_15.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_34.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_58.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                        </ul>
                        <a class="sNext" href="javascript:void(0)"></a>
                    </div><!-- slideBox End -->
                    <%--本期团购--%>
                    <div class="slideBoxs">
                        <a class="sPrev" href="javascript:void(0)"></a>
                        <ul>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_57.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_56.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_54.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_55.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                        </ul>
                        <a class="sNext" href="javascript:void(0)"></a>
                    </div><!-- slideBox End -->
                    <%--产品精选--%>
                    <div class="slideBoxs">
                        <a class="sPrev" href="javascript:void(0)"></a>
                        <ul>
                            <li>
                                <div class="pic"><a href="#" target="_blank">
                                    <img src="${path}/static/images/products/p_50.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_51.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_52.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_53.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                        </ul>
                        <a class="sNext" href="javascript:void(0)"></a>
                    </div><!-- slideBox End -->
                    <%--抢先一步--%>
                    <div class="slideBoxs">
                        <a class="sPrev" href="javascript:void(0)"></a>
                        <ul>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_15.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_17.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_16.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img
                                        src="${path}/static/images/products/p_19.jpg"/></a></div>
                                <div class="title">
                                    <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                    <h3><b>￥</b>23.00</h3>
                                </div>
                            </li>
                        </ul>
                        <a class="sNext" href="javascript:void(0)"></a>
                    </div><!-- slideBox End -->
                </div><!-- parBd End -->
            </div>
            <script type="text/javascript">
                /* 内层图片无缝滚动 */
                jQuery(".slideGroup .slideBoxs").slide({
                    mainCell: "ul",
                    vis: 4,
                    prevCell: ".sPrev",
                    nextCell: ".sNext",
                    effect: "leftMarquee",
                    interTime: 50,
                    autoPlay: true,
                    trigger: "click"
                });
                /* 外层tab切换 */
                jQuery(".slideGroup").slide({titCell: ".parHd li", mainCell: ".parBd"});
            </script>
            <!--广告样式-->
            <div class="Ads_style"><a href="#"><img src="${path}/static/images/AD_03.png" width="318"/></a><a
                    href="#"><img src="${path}/static/images/AD_04.png" width="318"/></a><a href="#"><img
                    src="${path}/static/images/AD_06.png" width="318"/></a></div>
        </div>
    </div>
    <%--商品信息--%>
    <div class="Sorted">
        <div class="Sorted_style">
            <a href="#" class="on">综合<i class="iconfont icon-fold"></i></a>
            <a href="#">信用<i class="iconfont icon-fold"></i></a>
            <a href="#">价格<i class="iconfont icon-fold"></i></a>
            <a href="#">销量<i class="iconfont icon-fold"></i></a>
        </div>
        <!--页数-->
        <div class="s_Paging">
            <span> 1/12</span>
            <a href="#" class="on">&lt;</a>
            <a href="#">&gt;</a>
        </div>
    </div>
    <div class="p_list  clearfix">
        <ul id="app">
        <a href="${path}/goods/detail">商品信息</a>
        </ul>
    </div>
</div>
<%--页脚--%>
<%@include file="jsp/bottom.jsp" %>
</body>
</html>
