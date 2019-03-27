$(function () {
    var zzl = /^[a-zA-Z0-9_]{5,10}$/;
    //用户名输入框焦点事件
    $("#username").blur(function () {
        username = $(this).val();
        if (username == null || username == "") {
            $("#usernamespan").html("用户名不能为空");
        } else if (!zzl.test(username)) {
            $("#usernamespan").html("用户名只能为数字，字母，下划线 5-10位")
        } else {
            $("#usernamespan").html("")
        }
    });
    //密码输入框焦点事件
    $("#password").blur(function () {
        password = $(this).val();
        if (password == null || password == "") {
            $("#passwordspan").html("密码不能为空");
        } else if (!zzl.test(password)) {
            $("#passwordspan").html("密码只能为字母，数字，下划线 5-15位")
        } else {
            $("#passwordspan").html("");
        }
    })
    //确认密码输入框焦点事件
    $("#password2").blur(function () {
        password2 = $(this).val();
        if (password2 == null || password2 == "") {
            $("#password2span").html("密码不能为空");
        } else if (!zzl.test(password2)) {
            $("#password2span").html("密码只能为字母，数字，下划线，点5-15位")
        } else {
            $("#password2span").html("");
        }
    })
    //验证码输入框焦点事件
    $("#auth").blur(function () {
        auth = $(this).val();
        if (auth == null || auth == "") {
            $("#authspan").html("请输入验证码");
        } else if (!zzl.test(auth)) {
            $("#authspan").html("验证码只能为字母，数字，下划线，点5-15位")
        } else {
            $("#authspan").html("");
        }
    })

})

function register() {
    var user_username = $("#username").val();
    var user_password = $("#password").val();
    var user_password2 = $("#password2").val();
    var auth = $("#auth").val();
    if (user_password != user_password2) {
        alert("两次密码输入不一致，请重新输入");
        return;
    } else if (user_username == "" || user_username == null || user_password == "" || user_password == null||auth==""||auth==null) {
        alert("请填写所有信息");
    } else {
        $.ajax({
            url: "/ssm1/user/register",
            type: "post",
            data: {
                "user_username": user_username,
                "user_password": user_password,
                "auth": auth
            },
            dataType: "text",
            success: function (data) {
                alert(data);
                if (data == "注册成功") {
                    alert("注册成功，正在跳向登录界面")
                    window.location.href = "ssm1/jsp/login.jsp";
                }
            },
            error: function (data) {
                alert("网络连接超时...");
                return
            },


        })

    }


}