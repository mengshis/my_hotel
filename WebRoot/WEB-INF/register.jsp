<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link rel="stylesheet" href="css/register.css"/>
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="wrap">
    <div class="container">
        <div class="head">

        </div>
        <div class="content">
            <h1 class="title">
                <label>注册新会员</label>
                <span>已有艺龙账号，</span>
                <a href="#">直接登录</a>
            </h1>
            <ul class="register">
                <li class="phone">
                    <p><span>*</span>手机</p>
                    <span><input type="text"/></span>
                </li>
                <li class="phone">
                    <p><span>*</span>验证码</p>
                    <span><input class="vcode" type="text"/></span>
                    <img src="images/Validate.html" class="validate"/>
                    <a href="#">看不清，换一张</a>
                    <span class="validate-code"></span>
                </li>
                <li class="phone">
                    <p><span>*</span>邮箱</p>
                    <span><input type="text"/></span>
                </li>
                <li class="phone">
                    <p><span>*</span>密码</p>
                    <span><input type="text"/></span>
                </li>
                <li class="phone">
                    <p><span>*</span>再次输入密码</p>
                    <span><input type="text"/></span>
                </li>
                <li>
                    <p></p>
                    <span><input class="chk" type="checkbox"/>同意接受艺龙发送的促销信息。</span>
                </li>
            </ul>
        </div>
    </div>
</div>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
