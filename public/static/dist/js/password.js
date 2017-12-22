$(function () {
    // 修改密码

    $("input[type='text']").focus(function () {
        $(this).val("");
    });
    $("input[type='password']").focus(function () {
        $(this).val("");
    });

    $(".btn").click(function () {
        // 原密码
        var value0 = $("#exampleInputPassword0").val();
        // 密码
        var value1 = $("#exampleInputPassword1").val();
        // 确认密码
        var value2 = $("#exampleInputPassword2").val();
        $.post("http://admin.tp5.com/index/manager/changepass", {
            oldpassword: value0,
            newpassword: value1,
            rnewpassword: value2
        }, function (data) {
            console.log(data);
            console.log(data.msg);
            if (value0 == "") {
                $(".help-block0").html("不能为空！");
                $('.btn').attr("type", "button");
            } else {
                $(".help-block0").html("");
            }
            if (value1 == "") {
                $(".help-block1").html("不能为空！");
                $('.btn').attr("type", "button");
            } else {
                $(".help-block1").html("");
            }
            if (value2 == "") {
                $(".help-block2").html("不能为空！");
                $('.btn').attr("type", "button");
            } else {
                $(".help-block2").html("");
            }
            if (value1 != value2 && value1 != "" && value2 != "" && value0 != "") {
                $(".help-block2").html("密码不一致！");
                $('.btn').attr("type", "button");
            } else if (value1 == value2 && value1 != "" && value2 != "" && value0 != "" && data.status != 0) {
                $('.btn').attr("type", "submit");
                alert(data.msg);
                window.location.href = "http://admin.tp5.com/index/login/logout.html"
            }
            if (data.status == 0) {
                $(".help-block0").html(data.msg);
            }
        })

    });
})