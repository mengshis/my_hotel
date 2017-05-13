<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hotel.entity.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
    prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
<div class="layui-tab layui-tab-brief main-tab-container">
    <ul class="layui-tab-title main-tab-title">
        <div class="main-tab-item">酒店管理</div>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <!-- 搜索 -->
            <form class="layui-form layui-form-pane search-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">标题</label>
                    <div class="layui-input-inline">
                        <input type="text" name="search[title]" value="" lay-verify="" placeholder="请输入标题搜索" autocomplete="off" class="layui-input">
                    </div>
                    <button class="layui-btn" lay-submit="" lay-filter="">搜索</button>
                </div>
                <!-- 每页数据量 -->
                <div class="layui-form-item page-size">
                    <label class="layui-form-label total">共计 120 条</label>
                    <label class="layui-form-label">每页数据条</label>
                    <div class="layui-input-inline">
                        <input type="text" name="page_size" value="20" lay-verify="number" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                    <button class="layui-btn" lay-submit="" lay-filter="">确定</button>
                </div>
            </form>
            <form class="layui-form" action="" method="post">
                <table class="list-table">
                    <thead>
                    <tr>
                        <th style="width:40px"><input type="checkbox" name="checkAll" lay-filter="checkAll" title=" "></th>
                        <th>ID</th>
                        <th>酒店名称</th>
                        <th>图片</th>
                        <th>类型</th>
                        <th>地址</th>
                        <th>总楼层</th>
                        <th>总房间</th>
                        <th>介绍</th>
                        <th>电话</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="hotel" items="${hotelList}">
                    <tr>
                        <td><input type="checkbox" name="ids" class="ids" lay-filter="checkOne" value="${ hotel.h_id}" title=" "><div class="layui-unselect layui-form-checkbox"><span> </span><i class="layui-icon"></i></div></td>
                        <td>${ hotel.h_id}</td>
                        <td><a class="list-title" href="javascript:void(0)" feedback-id="9">${ hotel.h_name}</a></td>
                        <td><img src="../${ hotel.h_pic}" width="100px" height="100px"/></td>
                        <td>${ hotel.style_id}</td>
                        <td>${ hotel.addr}</td>
                        <td>${ hotel.totalStorey}</td>
                        <td>${ hotel.totalRoom}</td>
                        <td>${ hotel.h_intro}</td>
                        <td>${ hotel.h_phone}</td>
                        <td style="text-align: center;width:160px">
                        	<a href="toAddHotel.do" class="layui-btn layui-btn-warm layui-btn-small" title="添加"><i class="layui-icon"></i></a>
                            <a href="toEditHotel.do?h_id=${ hotel.h_id}" class="layui-btn layui-btn-small" title="编辑"><i class="layui-icon"></i></a>
                            <a class="layui-btn layui-btn-small layui-btn-danger del_btn" feedback-id="${ hotel.h_id}" title="删除" feedback-name="${ hotel.h_name}"><i class="layui-icon"></i></a>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                    <thead>
                    <tr>
                        <th><button class="layui-btn layui-btn-small" lay-submit lay-filter="delete">删除</button></th>
                        <th colspan="12"><div id="page"></div></th>
                    </tr>
                    </thead>
                </table>
            </form>
        </div>
    </div>
</div>
<script src="../js/layui.js"></script>
<script src="../js/jquery-1.11.3.js"></script>
<script type="text/javascript">
    layui.use(['element', 'laypage', 'layer', 'form'], function(){
        var element = layui.element()
                ,jq = layui.jquery
                ,form = layui.form()
                ,laypage = layui.laypage;

        //留言预览
        jq('.list-title').click(function(){
            loading = layer.load(2, {
                shade: [0.2,'#000'] //0.2透明度的白色背景
            });
            var id = jq(this).attr('feedback-id');

            layer.close(loading);
            layer.open({
                type: 1,
                area: ['500px'],
                title: '留言内容',
                content: '<div style="padding:15px 20px;">'+'95的小鲜肉啊95的小鲜肉啊95的小鲜肉啊95的小鲜肉啊95的小鲜肉啊95的小鲜肉啊95的小鲜肉啊95的小鲜肉啊95的小鲜肉啊'+'</div>' //注意，如果str是object，那么需要字符拼接。
            });
        });

        //留言回复
        jq('.reply_btn').click(function(){
            var id = jq(this).attr('feedback-id');
            layer.open({
                type: 2,
                icon: 2,
                maxmin: true,
                area: ['800px','500px'],
                title: '回复内容',
                content: ['' ,'no']
            });
        });


        //ajax删除
        jq('.del_btn').click(function(){
            var name = jq(this).attr('feedback-name');
            var id = jq(this).attr('feedback-id');
            layer.confirm('确定删除【'+name+'】?', function(index){
                loading = layer.load(2, {
                    shade: [0.2,'#000'] //0.2透明度的白色背景
                });
                jq.post('delHotel.do',{'h_id':id},function(data){
					console.log(data);
					console.log(id);
                    layer.close(loading);
                    layer.msg(data.msg, {icon: 1, time: 1000}, function(){
                        location.reload();//do something
                    });

                });
            });

        });

        //全选
        form.on('checkbox(checkAll)', function(data){
            if(data.elem.checked){
                jq("input[type='checkbox']").prop('checked',true);
            }else{
                jq("input[type='checkbox']").prop('checked',false);
            }
            form.render('checkbox');
        });

        form.on('checkbox(checkOne)', function(data){
            var is_check = true;
            if(data.elem.checked){
                jq("input[lay-filter='checkOne']").each(function(){
                    if(!jq(this).prop('checked')){ is_check = false; }
                });
                if(is_check){
                    jq("input[lay-filter='checkAll']").prop('checked',true);
                }
            }else{
                jq("input[lay-filter='checkAll']").prop('checked',false);
            }
            form.render('checkbox');
        });

        //监听提交
        form.on('submit(delete)', function(data){
            //判断是否有选项
            var is_check = false;
            jq("input[lay-filter='checkOne']").each(function(){
                if(jq(this).prop('checked')){ is_check = true; }
            });
            if(!is_check){
                layer.msg('请选择数据', {icon: 2,anim: 6,time: 1000});
                return false;
            }
            //确认删除
            layer.confirm('确定批量删除?', function(index){
                loading = layer.load(2, {
                    shade: [0.2,'#000'] //0.2透明度的白色背景
                });
                var arr={ids:[]};
	            $(".ids").each(function(i){ //由于复选框一般选中的是多个,所以可以循环输出 
	            if(jq(this).prop('checked')){
	            	arr.ids.push($(this).val()); 
					console.log(arr.ids);
	            }					
				}); 
               
               console.log(arr);
               $.ajax({
               	url:'deleteBatch.do',
               	traditional: true,
               	method:"post",
               	data:arr,
               	success:function(data){
               		layer.msg(data.msg, {icon: 1, time: 1000}, function(){
                            location.reload();//do something
                        });
               	}
               });
                /* jq.post('deleteBatch.do',arr,function(data){
                	traditional: true,
                	layer.msg(data.msg, {icon: 1, time: 1000}, function(){
                            location.reload();//do something
                        });
                        //console.log(data);
                    if(data.code == 200){
                        layer.close(loading);
                        layer.msg(data.msg, {icon: 1, time: 1000}, function(){
                            location.reload();//do something
                        });
                    }else{
                        layer.close(loading);
                        layer.msg(data.msg, {icon: 2,anim: 6, time: 1000});
                    }
                }); */
            });
            return false;
        });



        laypage({
            cont: 'page'
            ,skip: true
            ,pages: 100 //总页数
            ,groups: 5 //连续显示分页数
            ,curr: 2
            ,jump: function(e, first){ //触发分页后的回调
                if(!first){ //一定要加此判断，否则初始时会无限刷新
                    loading = layer.load(2, {
                        shade: [0.2,'#000'] //0.2透明度的白色背景
                    });
                    location.href = '?&page='+e.curr;
                }
            }
        });
    })
</script>
</body>
</html>
