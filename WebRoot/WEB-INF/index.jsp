<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hotel.entity.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
    prefix="c" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/fancybox.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/slider.css"/>
</head>
<body >
    <header>
        <div class="header-inner header-top clear">
            <ul class="index-top-nav lf">
                <li><a href="#">登录</a></li>
                <li><b></b><a href="#">注册</a></li>
            </ul>
            <ul class="index-top-nav rt">
                <li><a href="#">首页</a></li>
                <li><a href="#">我的订单</a></li>
            </ul>
        </div>
    </header>
    <div class="header-search clear">
        <div class="header-inner">
            <div class="logo">
                <img src="images/summer7.png"/>
            </div>
            <div class="search-box">
                <div class="search">
                    <input type="search" class="txtSearch"/>
                    <a href="#" id="btn-kw" class="search-btn"><i></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="banner" data-bottom-top="transform: translateY(-40%);"
         data-top-bottom="transform: translateY(50%);">
        <div class="nav-box clear">
            <div class="nav">
                <ul class="lf">
                    <li><a href="#">登录</a></li>
                    <li><b></b><a href="#">注册</a></li>
                </ul>
                <ul class="rt">
                    <li><a href="#">首页</a></li>
                    <li><a href="#">我的订单</a></li>
                </ul>
            </div>
        </div>
        <ul class="clear">
            <li>
               <span>img01</span>
                <div>
                    <h3>城市酒店</h3>
                </div>
            </li>
            <li>
                <span>img01</span>
                <div>
                    <h3>MS-Hotel</h3>
                </div>
            </li>
            <li>
                <span>img01</span>
                <div>
                    <h3>MS-Hotel</h3>
                </div>
            </li>
        </ul>
        <div class="all-search">
            <ul>
                <li class="on"><span>国内酒店</span></li>
                <li><span>短租公寓</span></li>
                <li class="last">港澳台酒店</li>
                <li class="empty"></li>
            </ul>
            <div class="all-box">
                <div class="search-wrap">
                    <form>
                        <div class="item">
                            <label for="aim">目的地</label>
                            <input type="text" id="aim"/>
                        </div>
                        <div class="item">
                            <label for="start">入住</label>
                            <input type="text" id="start"/>
                            <label for="leave">离店</label>
                            <input type="text" id="leave"/>
                        </div>
                        <div class="item">
                            <label for="kw">关键词</label>
                            <input type="text" id="kw"/>
                        </div>
                        <div class="item submit-wrap">
                            <a class="btn-0" href="#">搜索</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<main>
    <div class="container" >
        <div class="row">
            <div class="col-sm-12">
                <div id="skrollr-body">
                    <div class="gallery"></div>
                </div>
                <div class="scroll-pause" data-anchor-target=".gallery" data-100p-top-top="transform:translateY(100%);" data-top-top="transform:translateY(0%)" data--150p-top-top="" data--300p-top-top="transform:translateY(-100%)">

                    <div class="row" data-anchor-target=".gallery" data-top-top="transform: translateX(0%);" data--150p-top-top="transform: translateX(-50%);">
                        <div style="background-image:url(images/small/coast.jpg);" ></div>

                        <div style="background-image:url(images/small/palmtrees.jpg);" ></div>

                        <div style="background-image:url(images/small/bay.jpg);" ></div>

                        <div style="background-image:url(images/small/sea.jpg);" ></div>

                        <div style="background-image:url(images/small/coast.jpg);" ></div>

                        <div style="background-image:url(images/small/palmtrees.jpg);" ></div>

                        <div style="background-image:url(images/small/bay.jpg);" ></div>

                        <div style="background-image:url(images/small/sea.jpg);" ></div>
                    </div>


                    <div class="row" data-anchor-target=".gallery" data-top-top="transform: translateX(-50%);" data--150p-top-top="transform: translateX(0);">

                        <div style="background-image:url(images/small/sea.jpg);" ></div>

                        <div style="background-image:url(images/small/bay.jpg);" ></div>

                        <div style="background-image:url(images/small/palmtrees.jpg);" ></div>

                        <div style="background-image:url(images/small/coast.jpg);" ></div>

                        <div style="background-image:url(images/small/sea.jpg);" ></div>

                        <div style="background-image:url(images/small/bay.jpg);" ></div>

                        <div style="background-image:url(images/small/palmtrees.jpg);" ></div>

                        <div style="background-image:url(images/small/coast.jpg);" ></div>

                    </div>

                </div>

            </div>
        </div>
        
        
        <div class="row city tow">
            <div class="col-sm-12">
                <h2>广州</h2>
            </div>
            <div class="col-md-8 col-sm-6" data-300-center-top="transform: scale(0.8); opacity: 0" data-300-center-center="transform: scale(1); opacity: 1">
                <div class="timeline-thumb">
                    <div class="thumb">
                        <img src="images/guangzhou.jpg" />
                    </div>
                    <div class="overlay">
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6" data-300-center-top="transform: scale(0.8); opacity: 0" data-300-center-center="transform: scale(1); opacity: 1">
                <p class="city-detail">广州是一座复杂的城市，既有光鲜亮丽的现代风格，又有质朴纯粹的市井气息；既有中式文化的浓郁厚重，又有西方世界的激情澎湃。超凡的想象力，跨界的创造力，因而才有这里的设计师酒店的与众不同。</p>
            </div>
            <div class="row">
            <c:forEach var="hotel" items="${hotelList}">
                <div class="col-md-4 col-sm-6" data-bottom-top="transform:translateX(-100px);opacity:0;"
                     data-center-top="transform: translateX(0px); opacity: 1">
                    <div class="p-wrapper">
                        <div class="p-thumb">
                            <a href="hotel.do?h_id=${hotel.h_id}"><img src="${hotel.h_pic}"/></a>
                            
                        </div>
                        <div class="p-text">
                            <h3><a href="3">${hotel.h_name}</a></h3>
                            <span>${hotel.h_intro}</span>
                        </div>
                    </div>
                </div>
              </c:forEach>
            </div>
        </div>
    </div>
</main>
<div class="footer">
        <div class="footer-info">
            <dl>
                <dt>加盟合作</dt>
                <dd><a href="#">酒店加盟</a></dd>
                <dd><a href="#">分销联盟</a></dd>
                <dd><a href="#">代理合作</a></dd>
                <dd><a href="#">广告服务</a></dd>
                <dd><a href="#">商家中心</a></dd>

            </dl>
            <dl>
                <dt>加盟合作</dt>
                <dd><a href="#">酒店加盟</a></dd>
                <dd><a href="#">分销联盟</a></dd>
                <dd><a href="#">代理合作</a></dd>
                <dd><a href="#">广告服务</a></dd>
                <dd><a href="#">商家中心</a></dd>

            </dl>
            <dl>
                <dt>关于艺龙</dt>
                <dd><a href="#">关于艺龙</a></dd>
                <dd><a href="#">酒店大全</a></dd>
                <dd><a href="#">国际酒店</a></dd>
                <dd><a href="#">校园招聘</a></dd>
                <dd><a href="#">联系我们</a></dd>

            </dl>
            <dl>
                <dt>艺龙APP下载</dt>
            </dl>
            <dl>
                <dt>艺龙官方微信</dt>
            </dl>
        </div>
        <div class="footer-copy">
            © 1999 - 2016 eLong, Inc or its affiliates. All Rights Reserved.
            <a href="#">京ICP证010011号</a>
            京公网安备
            <a href="#">11010502026059号</a>

        </div>
    </div>

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/skrollr.min.js"></script>
<script src="js/jquery.fancybox-1.3.1.pack.js"></script>
<script src="js/slider.js"></script>
    <script>
        $(document).ready(function() {
            $(".product-detail").hover(function () {
                $(this).find(".content-hide").slideToggle("fast");
            },function () {
                $(this).find(".content-hide").slideToggle("fast");
            })


            

//            $('.city img:first-child').hover(function(){
        //                console.log($(this));
        //                $(this).addClass('off').siblings().addClass('on');
        //            },function(){
        //                $(this).parent().children().addClass('on');
        //            })
             });

    </script>
<script>
    skrollr.init();
    $(".slider").slider();
    $('.all-search>ul').on('click','li',function(){
        $(this).addClass('on').siblings().removeClass('on');
    })
</script>

</body>
</html>