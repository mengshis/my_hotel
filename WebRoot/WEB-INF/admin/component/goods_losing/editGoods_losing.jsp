<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hotel.entity.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
    prefix="c" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>酒店后台管理系统</title>
    <link rel="stylesheet" href="../../css/layui.css"/>
    <link rel="stylesheet" href="../../css/global.css"/>
</head>
<body>
<div class="layui-tab-brief main-tab-container">
    <ul class="layui-tab-title main-tab-title">
        <a href="Goods_losingManage.html"><li>用户列表</li></a>
        <a href="addGood.html"><li class="layui-this">添加用户</li></a>
        <div class="main-tab-item">用户管理</div>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <form class="layui-form" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入用户昵称" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-block">
                        <input type="text" name="username" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">验证手机</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="phone" lay-verify="phone" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">验证邮箱</label>
                        <div class="layui-input-inline">
                            <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="../../layui.js"></script>
<script type="text/javascript">
    layui.use(['element', 'form', 'upload'], function(){
        var element = layui.element()
                ,form = layui.form()
                ,jq = layui.jquery;
        //图片上传
        layui.upload({
            url: ''
            ,elem:'#image'
            ,before: function(input){
                loading = layer.load(2, {
                    shade: [0.2,'#000'] //0.2透明度的白色背景
                });
            }
            ,success: function(res){
                layer.close(loading);
                jq('input[name=image_url]').val(res.path);
                layer.msg(res.msg, {icon: 1, time: 1000});
            }
        });

        //监听提交
        form.on('submit(cate_add)', function(data){
            loading = layer.load(2, {
                shade: [0.2,'#000'] //0.2透明度的白色背景
            });
            var param = data.field;
            jq.post('',param,function(data){
                if(data.code == 200){
                    layer.close(loading);
                    layer.msg(data.msg, {icon: 1, time: 1000}, function(){
                        location.reload();//do something
                    });
                }else{
                    layer.close(loading);
                    layer.msg(data.msg, {icon: 2, anim: 6, time: 1000});
                }
            });
            return false;
        });

    })
</script>
</body>
</html>

