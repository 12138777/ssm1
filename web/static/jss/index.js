$(function () {
    getGoods();
})

function getGoods() {
    $.ajax({
        url: "goods/getGoods",
        data: {},
        dataType: "json",
        type: "post",
        success: function (data) {

            for (var i = 0; i < data.length; i++) {
                var row=data[i];
                $("#app").append("<li class='gl-item'>"+
                    "<em class=\"icon_special tejia\"></em>"+
                    "<div class=\"Borders\"/>"+
                    "<div class=\"img\"><a href="+path+"/goods/detail?goods_id="+ row.goods_id+"><img src='"+path+ row.goods_img+"' style=\"width:220px;height:220px\"></a></div>"+
                    "<div class=\"Price\"><b>¥"+row.goods_price+"</b></div>"+
                    "<div class=\"name\"><a href=\"Product_Detailed.html\">"+row.goods_name+"</a></div>"+
                    "<div class=\"Shop_name\"><a href=\"#\">"+row.goods_info+"</div>"+
                    "<div class=\"p-operate\"><a href=\"#\" class=\"p-o-btn Collect\"><em></em>收藏</a>" +
                    "<a href=\"#\" class=\"p-o-btn shop_cart\"><em></em>加入购物车</a>" +
                    "</div>"+
                    "</li>"
                )
            }
        return
        },
        error: function () {
            alert("网络连接超时...")
        }

    })

}