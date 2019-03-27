$(function () {

    var zzl = /^[a-zA-Z0-9_]{5,10}$/;
    //用户名输入框焦点事件
    $("#username").blur(function () {
        username = $(this).val();
        if (username == null || username == "") {
            $("#usernamespan").html("用户名不能为空");
        } else if (!zzl.test(username)) {
            $("#usernamespan").html("用户名只能为数字，字母，下划线5-10位")
        } else {
            $("#usernamespan").html("")
        }
    });

    $("#password").blur(function () {
        password = $(this).val();
        if (password == null || password == "") {
            $("#passwordspan").html("密码不能为空");
        } else if (!zzl.test(password)) {
            $("#passwordspan").html("密码只能为字母，数字，下划线，点5-15位")
        } else {
            $("#passwordspan").html("");
        }
    })

})

function login() {
    var user_username = $("#username").val();
    var user_password = $("#password").val();
    var usernamespan = $("#usernamespan").html();
    var passwordspan = $("#passwordspan").html();
    if (usernamespan !== "" && passwordspan !== "") {
        alert("请输入正确格式");
        return;
    } else if (user_username == "" || user_username == null || user_password == "" || user_password == null) {
        alert("请输入所有信息");
        return;
    } else {
        $.ajax({
            url: "/ssm1/user/login",
            type: "post",
            data: {
                "user_username": user_username,
                "user_password": user_password
            },
            dataType: "text",
            success: function (data) {
                alert(data);
                if (data == "登录成功") {
                    // self.location.href = "/ssm1/index.jsp"
                    window.location.href="/ssm1/index.jsp";
                }
            },
            error: function () {
                alert("网络连接超时...");
                return
            }
        })
    }
}