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
    <link rel="stylesheet" href="../css/layui.css"/>
    <link rel="stylesheet" href="../css/global.css"/>
</head>
<body>
<div class="layui-tab-brief main-tab-container">
    <ul class="layui-tab-title main-tab-title">
        <a href="room.do"><li>客房列表</li></a>
        <a href="addRoom.do"><li class="layui-this">添加客房</li></a>
        <div class="main-tab-item">客房管理</div>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <form method="post" class="layui-form" action="addRoom.do">
                <div class="layui-form-item">
                    <label class="layui-form-label">房间名称</label>
                    <div class="layui-input-block">
                        <input type="text" name="r_name" lay-verify="required" autocomplete="off" placeholder="请输入房名" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                		<div class="layui-inline">
							<label class="layui-form-label">房号</label>
							<div class="layui-input-inline">
								<input type="phone" name="inStorey" lay-verify="required"
									autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">房型</label>
							<div class="layui-input-inline">
								<select name="r_style_id">							        
							        <c:forEach var="room_style" items="${room_stylelist}">
							        <option value="${room_style.r_style_id }">${room_style.r_name }</option>							       
							        </c:forEach>
							     </select>
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">图片ID</label>
							<div class="layui-input-inline">
								<select name="pic_id">							        
							        <c:forEach var="pic" items="${piclist}">
							        <option value="${pic.pic_id }">${pic.pic1 }</option>							       
							        </c:forEach>
							     </select>
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">酒店ID</label>
							<div class="layui-input-inline">
								<select name="h_id">							        
							        <c:forEach var="hotel" items="${hotellist}">
							        <option value="${hotel.h_id }">${hotel.h_name }</option>							       
							        </c:forEach>
							     </select>
							</div>
						</div>
					</div>
					<div class="layui-form-item">
	                    <label class="layui-form-label">房间状态</label>
	                    <div class="layui-input-block">
	                        <input type="text" name="r_state" lay-verify="required" autocomplete="off" placeholder="请输入房间状态" class="layui-input">
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
<script src="../js/layui.js"></script>
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

