$(function () {
    $(".add").each(function () {
        $(this).click(function () {
            var count = parseInt($(this).prev().val());
            count = count + 1;
            $(this).prev().val(count);
            var price = parseFloat($(this).parent().parent().parent().find("[title=price]").html());
            var xiaoji = price * count;
            $(this).parent().parent().next().text(xiaoji);
            var car_id = $(this).parent().find(".car_id").val();
            $.ajax({
                url: "/ssm1/car/updateCarCount",
                data: {car_id: car_id, counts: count},
                type: "post",
                dataType: "json",
                success: function (data) {
                    if (data.res == "success") {
                        calc();
                        console.log("操作成功");
                    } else {
                        console.log("操作失败")
                    }
                }
            })
        })
    })

    $(".mins").each(function () {
        $(this).click(function () {
            var count = parseInt($(this).next().val());
            if (count > 1) {
                count = count - 1;
            }
            $(this).next().val(count);
            var price = parseFloat($(this).parent().parent().parent().find("[title=price]").html());
            var xiaoji = price * count;
            $(this).parent().parent().next().text(xiaoji);
            var car_id = $(this).parent().find(".car_id").val();
            $.ajax({
                url: "/ssm1/car/updateCarCount",
                data: {car_id: car_id, counts: count},
                type: "post",
                dataType: "json",
                success: function (data) {
                    if (data.res == "success") {
                        calc();
                        console.log("操作成功");
                    } else {
                        console.log("操作失败")
                    }
                }
            })

        })
    });

    $("#checkall").click(function () {
        var checked = $("#checkall").is(":checked");
        if (checked) {
            $(".item").each(function () {
                $(this).prop("checked", true);
            })
        } else {
            $(".item").each(function () {
                $(this).prop("checked", false);
            })
        }
        calc()
    });

    $(".item").each(function () {
        $(this).click(function () {
            var total = $(".item").length;
            var checked = $(".item:checked").length;
            if (total == checked) {
                $("#checkall").prop("checked", true);
            } else {
                $("#checkall").prop("checked", false);
            }
            calc()
        })
    })

})
//计算总价
function calc() {
    var total = 0;
    $(".item:checked").each(function () {
        var xiaoji = parseFloat($(this).parent().parent().parent().parent().find(".xiaoji").text());
        total = total + xiaoji;
    })
    $("#total").html(total);
}

function del(car_id) {
    var flag = confirm("确定要将该商品移出购物车吗？");
    if (flag) {
        $.ajax({
            url: path + "/car/deleteCar",
            data: {car_id: car_id},
            type: "post",
            dataType: "json",
            success: function (data) {
                if (data.res=="success"){
                    alert("删除成功")
                    window.location.href = path + "/car/queryCar"
                } else {
                    alert("由于网络原因。。。删除失败")
                }
            }
        })
    }

}

function jiesuan() {
    var total = $("#total").text();
    var goodids = [];
    var counts = [];
    var prices = [];
    var carids=[];
    console.log(total);
    console.log(goodids);
    console.log(counts);
    console.log(prices);
    console.log(carids);
    $(".item:checked").each(function () {
        goodids.push($(this).parent().parent().find(".goodid").val());
        counts.push($(this).parent().parent().find(".count").val());
        prices.push($(this).parent().parent().find(".price").text());
        carids.push($(this).parent().parent().find(".carid").val());
    })
    console.log(goodids);
    console.log(counts);
    console.log(prices);
    $.ajax({
        url: path + "/process/order?action=add",
        data: {
            total: total,
            goodids: goodids,
            counts: counts,
            prices: prices,
            carids:carids
        },
        traditional: true,
        type: "post",
        dataType: "json",
        success: function (result) {
            alert(result.info)
        }
    })
}
