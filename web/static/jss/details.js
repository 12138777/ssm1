$(function () {

})

function mins() {
    var count = parseInt($("#count").val());
    if (count > 1) {
        count = count - 1;
    }
    $("#count").val(count);
}

function add() {
    var count = parseInt($("#count").val());
    count = count + 1;
    $("#count").val(count);
}

function addCar() {
    var user=$("#user").val();

    if (user==null||user==''){
        alert("请登录后再操作");
        window.location.href="/ssm1/jsp/login.jsp";
        return;
    }else {
        var goods_id = $("#goodid").val();
        var counts = $("#count").val();
        $.ajax({
            url: "/ssm1/car/addCar",
            data: {
                goods_id: goods_id,
                counts: counts
            },
            type: "post",
            dataType: "json",
            success: function (data) {
                if(data.res=="success"){
                    alert("添加成功");
                }else{
                    alert("添加失败!");
                }
            }
        })
    }
}