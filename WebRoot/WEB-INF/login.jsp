<%@ page import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/login.css"/>
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<video class="bg-video" src="res/birds.mp4" autoplay loop muted></video>
<div class="wrap">

    <div class="content">
        <div class="login-info">
            <div class="login-tab">
                森林城市登录
            </div>
            <form action="login.do" method="post">
                <div class="form-inner">
                    <div class="user">
                        <input id="uname" autofocus required autocomplete="off" minlength="6"  type="text" name="pid" placeholder="手机号/会员名/昵称/邮箱"/>
                        <span class="help-block bg-default">用户名长度在6~9位之间</span>
                    </div>
                    <div class="user">
                        <input type="password" required minlength="6" maxlength="9" id="upwd" name="pwd" placeholder="密码"/>
                        <span class="help-block bg-default">密码长度在6~9位之间</span>
                    </div>
                    <div class="user">
                        <label>
                            <input type="checkbox" name="chk" />两周内自动登录
                        </label>
                        <a href="#" class="rt">忘记密码？</a>
                    </div>
                    <div class="user">
                        <input type="submit" value="登录" class="login-submit"/>
                    </div>
                    <div class="user">
                        <a href="#" class="register">没有帐号？立即注册</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/1.js"></script>
</body>
</html>
