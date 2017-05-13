<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/layui.css"/>
    <link rel="stylesheet" href="../css/admin.css"/>
</head>
<body>
    <div class="login-logo">
        <a href="#">MS Hotel</a>
    </div>
    <div class="widget">
        <div class="login-content">
            <div class="widget-content">
                <form action="index.html" method="get" class="">
                    <h3 class="form-title">登录后台管理</h3>
                    <fieldset>
                        <div class="form-group">
                            <label for="username">账号:</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="layui-icon" style="font-size: 16px; color: #fff;">&#xe612;</i>
                                </span>
                                <input id="username" name="userName" style="font-size: 14px; color: #fff;" placeholder="请输入您的账号" class="form-control input-lg">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password">密码:</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="layui-icon" style="font-size: 16px; color: #fff;">&#xe622;</i>
                                </span>
                                <input id="password" type="password" name="password" style="font-size: 14px; color: #fff;" placeholder="请输入您的密码" class="form-control input-lg">
                            </div>
                        </div>
                    </fieldset>
                    <div class="form-actions">
                        <button class="btn btn-warning pull-right">登录
                            <i class="m-icon-swapright m-icon-white"></i>
                        </button>
                        <div class="forgot">
                            <a href="#" class="forgot">忘记密码？</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<script src="../js/layui.js"></script>

</body>
</html>