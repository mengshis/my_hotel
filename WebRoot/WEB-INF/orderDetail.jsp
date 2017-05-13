<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/animate.min.css"/>
    <link rel="stylesheet" href="css/orderDetail.css"/>
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="wrap clear">
    <div id="menu">
        <nav class="navbar navbar-default">
            <div class="navbar-header clear">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="menu-btn">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="index#">
                    <img src="images/summer7.png"/>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="menu-btn">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#index.html#myMsg">个人中心</a>
                    </li>
                    <li>
                        <a href="#index.html#myOrder">我的订单</a>
                    </li>
                    <li>
                        <a href="#index.html#myCheap">我的优惠</a>
                    </li>
                    <li>
                        <a href="#index.html#myCommt">我的评论</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="container">
        <section id="order-info">
            <div class="crumb">
                <a href="#">我的账户 > </a>
                <a href="#">酒店订单 > </a>
                订单详情
            </div>
            <div class="order-msg">
                <div class="state">
                    <span class="number">订单号：199502017<span class="date">(2017年01月21日预订)</span></span>

                    <span class="order-state">
                        订单状态：已经取消
                    </span>
                </div>
                <div class="price">
                    <span class="money-box">
                        <span class="money">
                            总金额：<span class="rmb">758.00</span>元
                        </span>
                    </span>
                </div>
                <div class="clear"></div>
            </div>
            <div class="house-detail">
                <ul class="hotel-info">
                    <li>
                        <a class="name" href="#">三亚凤凰岛海洋之星度假酒店</a>
                    </li>
                    <li>
                        <span class="title">酒店地址：</span>
                        凤凰岛内 近椰梦长廊,鹿回头,第一市场,步行街,万豪超市9,15,19,25,26,公交路线
                    </li>
                    <li>
                        <span class="title">前台电话：</span>
                        0898-32805728,15109881868
                    </li>
                </ul>
                <div class="btn-order">
                    <a class="submit-btn" href="#">再次预订</a>
                </div>
                <div class="clear"></div>
            </div>
            <div class="live-msg">
                <h2>入住信息</h2>
                <ul>
                    <li>
                        <span class="title">入离日期：</span>2017年01月21日入住，1晚
                    </li>
                    <li>
                        <span class="title">到店时间：</span>23:59--02:00
                    </li>
                    <li>
                        <span class="title">房&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;型：</span>布拉格之恋奢华海景房
                    </li>
                    <li><span class="title">房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 量：</span>1间</li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="live-msg">
                <h2>联系人信息</h2>
                <ul>
                    <li>
                        <span class="title">联系方式：</span>18883844383
                    </li>
                    <li>
                        <span class="title">邮&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;箱：</span>1002163678@qq.com
                    </li>
                    <li><span class="title">入&nbsp;&nbsp;住&nbsp;&nbsp; 人：</span>蒙施</li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="live-msg">
                <h2>支付信息</h2>
                <div>
                    <p><span class="title"></span>支付方式：
                    <span class="pay">酒店需要您担保758.00元确认房间</span></p>
                </div>
            </div>
        </section>
        <div class="btn-cancle">
            <a href="#" id="cancle-btn" onclick="modalShow('#bigModal', '', modalDataInit('test'));">取消订单</a>
        </div>
    </div>
</div>
<div class="modal"  onclick="modalHide('#bigModal', '');" id="bigModal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="modalHide('#bigModal', '');" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span  class="sr-only">Close</span></button>
                <h4 class="modal-title">取消订单</h4>
            </div>
            <div class="modal-body">
               <pre class="text-left">
                    您要取消订单？
			   </pre>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/orderDetail.js"></script>
</body>
</html>
