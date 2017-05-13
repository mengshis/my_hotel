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
    <link rel="stylesheet" href="css/myOrder.css"/>
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
        <section class="order-info clear">
            <div class="content clear">
                <div class="order-list clear">
                    <div class="date lf">
                        <div class="week rt ">
                            周六
                        </div>
                        <div class="month">
                            1月
                        </div>
                        <div class="day lf clear">
                            <h4>今天</h4>
                        </div>
                        <div class="clear"></div>
                        <p class="days">入住1晚</p>
                    </div>

                    <div class="detail-box rt">
                        <div class="detail-one clear">
                            <div class="detail-order">
                                <div class="detail-tabs">
                                    <span>订单号 <b>199502017</b></span>
                                    <span>预订时间 <b>2017-01-21 21:55:26</b></span>
                                </div>
                                <ul class="orders clear">
                                    <li class="info-icon">
                                        <a href="#"><img src="images/info.jpg"/></a>
                                    </li>
                                    <li class="info-txt">
                                        <h1><a href="#"> 三亚凤凰岛海洋之星度假酒店</a></h1>
                                        <p><span class="price"> 758</span> 元<span class="cheap">34</span></p>
                                        <p class="addr-phone">凤凰岛内 近椰梦长廊,鹿回头,第一市场,步行街,万豪超市9,15,19,25,26,公交路线</p>
                                        <p class="phone">电话:0898-32805728,15109881868</p>
                                    </li>
                                    <li class="info-price">
                                        <h4>等待担保</h4>
                                        <a id="look-order-schedule" href="#">查看订单进度</a>
                                    </li>
                                    <li class="info-trace">
                                        <p>
                                            <a class="btn-update" href="#">修改订单</a>
                                            <a class="btn-update" href="#">取消订单</a>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="order-schedule fade clear">
                                <div class="my-progress-bar clear">
                                    <ul class="progress-bar-txt clear">
                                        <li class="first"><p>提交订单</p></li>
                                        <li><p>担保成功</p></li>
                                        <li><p>酒店确认</p></li>
                                        <li><p>入住</p></li>
                                        <li><p>离店（返现可用,解冻担保）</p></li>
                                    </ul>
                                    <ul class="progress-detail clear">
                                        <li>
                                            <span class="time">2017-01-21 21:54</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="clear"></div>
                <div class="page-list">
                    <div>
                        <span class="prev"><a href="#">previous</a></span>
                        <span class="action"><a class="cur" href="#">1</a></span>
                        <span class="next"><a href="#">next</a></span>
                    </div>
                </div>

            </div>

        </section>
    </div>
</div>

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $('.info-price').on('click','#look-order-schedule',function(){
        $(".order-schedule").toggleClass('in');
    })
</script>
</body>
</html>
