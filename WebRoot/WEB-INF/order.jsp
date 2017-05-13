<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hotel.entity.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
    prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/order.css"/>
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="order-bg">
    <div class="order-wrap">
        <div class="content-title">
            <h2 class="hotel-name">启东恒大海上威尼斯酒店（原恒大酒店）</h2>
        </div>
        <div class="content">
	        <form action="addMyOrder.do" method="post">
	        	<input type="hidden" name="oid" value="${oid}"/>
	        	
	            <div class="order-info">
	                <div class="title">
	                    <span>预订信息</span>
	                </div>
	                <div class="line"></div>
	                <div class="item">
	                    <div class="item-title">
	                        <span>入离时间：</span>
	                    </div>
	                    <div class="item-body">
	                        <div class="date-order">
	                            <input type="text" name="come_time" class="begin-date"/>
	                            <span class="week">明天</span>
	                        </div>
	                        至
	                        <div class="date-order">
	                            <input type="text" name="leave_time" class="begin-date"/>
	                            <span class="week">后天</span>
	                        </div>
	                        <span class="duration">共一晚</span>
	                    </div>
	                </div>
	                <div class="item">
	                    <div class="item-title">
	                        <span>预订间数：</span>
	                    </div>
	                    <div class="item-body">
	                        <div class="room-order">
	                            <input name="quantity" id="room-num"/>
	                            <div class="total-price">
	                                ￥
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="line"></div>
	                <div class="item">
	                    <div class="item-title">
	                        <span>优惠信息：</span>
	                    </div>
	                    <div class="item-body">
	                        <div>
	                            <div class="discount-amount">￥--</div>
	                            <div class="no-coupon hide">暂无可用优惠券</div>
	                            <div class="show-coupon hide">
	                                <span class="trigger">
	                                    <span>查看优惠</span>
	                                </span>
	                            </div>
	                            <span class="add-coupon">添加优惠券</span>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="personal-info">
	                <div class="title">
	                   <span>个人信息</span>
	                </div>
	                <div class="line"></div>
	                <div class="item">
	                    <div class="item-title">
	                        <span><em>*</em>手机号码：</span>
	                    </div>
	                    <div class="item-body">
	                        <input type="text" name="phone" class="grey" id="phone" placeHolder="订单确认后给您发送短信通知"/>
	                    </div>
	                </div>
	                <div class="item">
	                    <div class="item-title">
	                        <span><em>*</em>电子邮箱：</span>
	                    </div>
	                    <div class="item-body">
	                        <input type="text" id="email" name="email" class="grey" placeHolder="接收确认邮件，获得出行资讯"/>
	                    </div>
	                </div>
	            </div>
	            <div class="submit-order clear">
	                <div class="re-select">
	                    <a href="#">重新选择房型</a>
	                </div>
	                <input  type="submit" value="提交订单" class="submit-btn"/>
	                <div class="book-notes">
	                    我接受
	                    <a href="#">《酒店预订需知》</a>
	                </div>
	            </div>
	        </form>
        </div>
        <div class="right-aside">
            <div class="hotel-info">
                <div>
                    <img src="images/hotel-info.jpg"/>
                </div>
                <div class="hotel-n">
                    启东恒大海上威尼斯酒店（原恒大酒店）
                </div>
                <div class="hotel-addr">地址：启东市寅阳镇恒大路1号恒大海上威尼斯</div>
            </div>
            <div class="line"></div>
            <div class="room-info">
                <div class="room-name">园景双床房[双早]</div>
                <div>
                    <span>床型： </span>双床
                </div>
                <div>
                    <span>楼层： </span>3-13楼
                </div>
                <div>
                    <span>面积： </span>62平米
                </div>
                <div>
                    <span>最多入住人数： </span>2
                </div>
                <div>
                    <span>宽带： </span>免费有线宽带 免费无线宽带
                </div>
                <div>
                    <span>窗户： </span>部分无窗
                </div>
                <div>
                    <span>支付： </span>途牛将预收全部费用
                </div>
                <div>
                    <span>加床： </span>请提前咨询酒店前台
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>