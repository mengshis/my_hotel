<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hotel.entity.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
    prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="gbk">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=no">
<title>酒店后台管理系统</title>
<link rel="stylesheet" href="../css/layui.css"  media="all"/>
<link rel="stylesheet" href="../css/global.css" />
</head>
<body>
	<div class="layui-tab-brief main-tab-container">
		<ul class="layui-tab-title main-tab-title">
			<a href="hotel.do"><li>酒店列表</li>
			</a>
			<a href="addHotel.do"><li class="layui-this">添加酒店</li>
			</a>
			<div class="main-tab-item">酒店管理</div>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show">
				<form method="post" class="layui-form" action="addHotel.do">
					<div class="layui-form-item">
						<label class="layui-form-label">酒店名称</label>
						<div class="layui-input-block">
							<input type="text" name="h_name" lay-verify="required"
								autocomplete="off" placeholder="请输入酒店名称" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">上传图片</label>
						<div class="layui-input-block">					
							<input type="file" name="h_pic" class="layui-upload-file">  
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">酒店类型id</label>
							<div class="layui-input-inline">
								<select name="style_id">							        
							        <c:forEach var="styleId" items="${styleIdList}">
							        <option value="${styleId.style_id }">${styleId.s_name }</option>							       
							        </c:forEach>
							     </select>
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">联系电话</label>
							<div class="layui-input-inline">
								<input type="phone" name="h_phone" lay-verify="required"
									autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">总楼层</label>
							<div class="layui-input-inline">
								<input type="text" name="totalStorey" lay-verify="required"
									autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">总房间</label>
							<div class="layui-input-inline">
								<input type="text" name="totalRoom" lay-verify="required"
									autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">地址</label>
						<div class="layui-input-block">
							<input type="text" name="addr" lay-verify="required"
								autocomplete="off" class="layui-input">
						</div>
					</div>
					
					<div class="layui-form-item layui-form-text">
    					<label class="layui-form-label">介绍</label>
						    <div class="layui-input-block">
						      <textarea placeholder="请输入内容" name="h_intro" class="layui-textarea"></textarea>
						    </div>
  					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
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

