<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>酒店后台管理系统</title>
    <link rel="stylesheet" href="../css/layui.css"/>
    <link rel="stylesheet" href="../css/global.css"/>
</head>
<body>
<!--布局容器-->
    <div class="layui-layout layui-layout-admin">
        <!--头部-->
        <div class="layui-header">
            <div class="layui-main">
                <!-- logo -->
                <a href="/" style="color: #c2c2c2; font-size: 18px; line-height: 60px;">酒店后台管理系统</a>
                <!-- 水平导航 -->
                <ul class="layui-nav" style="position: absolute; top: 0; right: 0; background: none;">
                    <li class="layui-nav-item">
                        <a href="../index.do">
                            进入前台
                        </a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            酒店管理
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;">
                                    个人信息
                                </a>
                            </dd>
                            <dd>
                                <a href="javascript:;">
                                    修改密码
                                </a>
                            </dd>
                            <dd>
                                <a href="javascript:;">
                                    退出登录
                                </a>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
        <!--侧边栏-->
        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <ul class="layui-nav layui-nav-tree left_menu_ul">
                    <li class="layui-nav-item layui-nav-title">
                        <a>酒店管理</a>
                    </li>
                    <li class="layui-nav-item first-item">
                        <a href="hotel.do" target="main">
                            <i class="layui-icon">&#xe609;</i>
                            <cite>酒店管理</cite>
                        </a>
                    </li>
                    <li class="layui-nav-item content_manage">
                        <a href="room.do" target="main">
                            <i class="layui-icon">&#xe60a;</i>
                            <cite>客房管理</cite>
                        </a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="myOrder.do" target="main">
                            <i class="layui-icon">&#xe63a;</i>
                            <cite>订单管理</cite>
                        </a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="goods.do" target="main">
                            <i class="layui-icon">&#xe63a;</i>
                            <cite>物品管理</cite>
                        </a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="stayInfo.do" target="main">
                            <i class="layui-icon">&#xe63a;</i>
                            <cite>入住信息管理</cite>
                        </a>
                    </li>
                </ul>

            </div>
        </div>
        <!--主体-->
        <div class="layui-body iframe-container">
            <div class="iframe-mask" id="iframe-mask"></div>
            <iframe class="admin-iframe" id="admin-iframe" name="main" src="">
            	<h1>欢迎进入后台管理系统</h1>
            </iframe>
        </div>
        <!--底部-->
        <div class="layui-footer" style="text-align: center; line-height: 44px;">
            Copyright © 2017
            <a href="#">"Author :Meng shi"</a>
        </div>
    </div>
<script src="../js/layui.js"></script>
<script type="text/javascript">
    layui.use(['layer', 'element','jquery','tree'], function(){
        var layer = layui.layer
                ,element = layui.element() //导航的hover效果、二级菜单等功能，需要依赖element模块
                ,jq = layui.jquery;
        //左边菜单点击
        jq('.left_menu_ul .layui-nav-item').click(function(){
            jq('.left_menu_ul .layui-nav-item').removeClass('layui-this');
            jq(this).addClass('layui-this');
            //出现遮罩层
            jq("#iframe-mask").show();
            //遮罩层消失
            jq("#admin-iframe").load(function(){
                jq("#iframe-mask").fadeOut(100);
            });
        });

    });
</script>
</body>
</html>
