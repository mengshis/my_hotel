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
        <a href="room.do"><li>订单列表</li></a>
        <a href="addRoom.do"><li class="layui-this">添加订单</li></a>
        <div class="main-tab-item">订单管理</div>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <form method="post" class="layui-form" action="addMyOrder.do">
                <div class="layui-form-item">
                    <label class="layui-form-label">订单编号</label>
                    <div class="layui-input-block">
                        <input type="text" name="o_num" lay-verify="required" autocomplete="off" placeholder="请输入订单编号" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                		<div class="layui-inline">
							<label class="layui-form-label">用户ID Card</label>
							<div class="layui-input-inline">
								<input type="text" name="pid" lay-verify="required"
									autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">房间号</label>
							<div class="layui-input-inline">
								<input type="text" name="inStorey" lay-verify="required"
									autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">预订时间</label>
							<div class="layui-inline">
							  <input class="layui-input" name="bookTime" placeholder="日期" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
	                    <label class="layui-form-label">订单状态</label>
	                    <div class="layui-input-block">
	                        <input type="text" name="o_state" lay-verify="required" autocomplete="off" placeholder="请输入订单状态" class="layui-input">
	                    </div>
	                </div>
	                <div class="layui-form-item">
	                    <div class="layui-inline">
							<label class="layui-form-label">订单数量</label>
							<div class="layui-input-inline">
								<input type="text" name="o_quantity" lay-verify="required"
									autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">是否包含早餐</label>
							<div class="layui-input-inline">
								<input type="text" name="isFreakfast" lay-verify="required"
									autocomplete="off" class="layui-input">
							</div>
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
			var laydate = layui.laydate;
  
		  var start = {
		    min: laydate.now()
		    ,max: '2099-06-16 23:59:59'
		    ,istoday: false
		    ,choose: function(datas){
		      end.min = datas; //开始日选好后，重置结束日的最小日期
		      end.start = datas; //将结束日的初始值设定为开始日
		    }
		  };
		  
			  var end = {
			    min: laydate.now()
			    ,max: '2099-06-16 23:59:59'
			    ,istoday: false
			    ,choose: function(datas){
			      start.max = datas; //结束日选好后，重置开始日的最大日期
			    }
			  };
			  
			  document.getElementById('LAY_demorange_s').onclick = function(){
			    start.elem = this;
			    laydate(start);
			  };
			  document.getElementById('LAY_demorange_e').onclick = function(){
			    end.elem = this;
			    laydate(end);
			  };
    });
</script>

</body>
</html>

