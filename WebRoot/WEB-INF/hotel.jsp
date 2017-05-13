<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hotel.entity.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
    prefix="c" %>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/hotel-detail.css"/>
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="hdetail-wrap">
    <div class="cont-box">
        <div class="header clear">
            <div class="cont-head clear">
                <div class="hotel-head-wrap lf">
                    <div class="hotel-head">
                        <h1>
                            <span>${hotel.h_name}</span>
                            <span>${hotel.style_id}</span>
                        </h1>
                    </div>
                    <div class="hotel-addr">
                        
                        <span>${hotel.addr}</span>
                    </div>
                </div>
                <div class="hotel-pay rt">
                    <div class="start-pay">
                        <span class="yen">￥</span>
                        <span class="strat-price">1372</span>
                        <span class="text">起</span>
                    </div>
                    <div class="btn-pay">
                        <a href="#" class="pay-start">开始预订</a>
                    </div>
                </div>
            </div>
            <div class="cont-body clear">
                <div class="photo-box-left">
                    <div class="pic-top">
                        <div class="pic-box">
                            <img src="${pic.pic1}" class="bg slideLeft" id="bg1" />
                            <img src="${pic.pic2}" class="bg slideBottom" id="bg2" />
                            <img src="${pic.pic3}" class="bg zoomIn" id="bg3" />
                            <img src="${pic.pic4}" class="bg zoomOut" id="bg4" />
                            <img src="${pic.pic5}" class="bg rotate" id="bg5" />
                            <img src="${pic.pic6}" class="bg zoomOut" id="bg6" />
                            <img src="${pic.pic7}" class="bg rotate" id="bg7" />
                            <img src="${pic.pic8}" class="bg zoomOut" id="bg8" />
                        </div>
                        <div class="caroufredsel_wrapper">
                            <ul class="small-pic">
                                <li><a href="#bg1"><img src="${pic.pic1}" /></a></li>
                                <li><a href="#bg2"><img src="${pic.pic2}" /></a></li>
                                <li><a href="#bg3"><img src="${pic.pic3}"/></a></li>
                                <li><a href="#bg4"><img src="${pic.pic4}" /></a></li>
                                <li><a href="#bg5"><img src="${pic.pic5}" /></a></li>
                                <li><a href="#bg6"><img src="${pic.pic6}"/></a></li>
                                <li><a href="#bg7"><img src="${pic.pic7}" /></a></li>
                                <li><a href="#bg8"><img src="${pic.pic8}"/></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="more-detail-right">
                    <div class="hotel-score">
                        <span class="star">
                            <label></label>
                        </span>
                        <span class="a1">4.4</span>
                        <span class="a2">/5分</span>
                        来自 <span>135</span>条评价
                    </div>
                    <div class="hotel-commt">
                        <div class="hotel-commt-per">
                            <span>${hotel.h_phone}</span>
                            发布于2017-01-15
                        </div>
                        <div class="hotel-commt-text">
                            <ul class="commt-text-list">
                                <li data-index="0" data-user="8060563633" data-time="2017-01-15">
                                    <div>${hotel.h_intro}</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="hotel_side_map">

                    </div>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="main-info">
                <div class="hotel-tabs clear">
                    <ul>
                        <li class="cur">
                            <a href="#"><span>房型价格</span></a>
                        </li>
                        <li>
                            <a href="#"><span>酒店介绍</span></a>
                        </li>
                        <li>
                            <a href="#"><span>位置及周边</span></a>
                        </li>
                        <li>
                            <a href="#"><span>点评</span><strong>（135条）</strong></a>
                        </li>
                    </ul>
                </div>
                <div class="clear">
                    <div class="hotel-price">
                        <div class="hotel-price-head">
                            <label for="begin_date">
                                <span>入住</span>
                                <input id="begin_date" class="in-date" type="text"/>
                            </label>
                            <label for="end_date">
                                <span>离店</span>
                                <input id="end_date" class="out-date" type="text"/>
                            </label>
                            <label for="hotel-search">
                                <span class="btn-search" id="hotel-search">确定</span>
                            </label>
                        </div>
                    </div>
                    <div class="hotel-price-loading">
                        <div class="loading-img"></div>
                        <div class="loding-text"></div>
                    </div>
                    <div class="hotel-price-body">
                        <div class="hotel-price-title">
                            <span class="fx lf">房型</span>
                            <div class="bed-style">
                                <div class="style-title">
                                    <span class="style-name">床型</span>
                                    <span class="style-icon"></span>
                                </div>
                            </div>
                            <div class="breakfast-style">
                                <div class="style-title">
                                    <span class="style-name">早餐</span>
                                    <span class="style-icon"></span>
                                </div>
                            </div>
                            <div class="network-style">
                                <div class="style-title">
                                    <span class="style-name">宽带</span>
                                    <span class="style-icon"></span>
                                </div>
                            </div>
                            <div class="cancel-style">
                                <div class="style-title">
                                    <span class="style-name">取消政策</span>
                                    <span class="style-icon"></span>
                                </div>
                            </div>
                            <span class="s6 lf">日均价 <span>(含服务费)</span></span>
                        </div>
                        <div class="hotel-price-list clear">
                            <div class="s1 lf clear">
                                <div class="lf"><a href="#"><img src="${pic.pic1 }" /></a></div>
                                <div class="name-detail">
                                    <p class="name">${hotel_style.s_name }</p>
                                    <P class="detail">查看详情></P>
                                </div>
                            </div>
                            <div class="s2 rt">
                                <ul class="item">
                                    <li class="m1"><span>(自营★质量保证)</span></li>
                                    <li class="m2"><span>${r_style.r_name }</span></li>
                                    <li class="m3"><span>不含早</span></li>
                                    <li class="m4">
                                        <span><a href="#">免费</a></span>
                                        <div class="tip">
                                            <div class="big-up-arrow"></div>
                                            <div class="small-up-arrow"></div>
                                            免费有线宽带
                                            免费无线宽带
                                        </div>
                                    </li>
                                    <li class="m5">
                                        <span><a href="#">不可取消</a></span>
                                        <div class="tip">
                                            <div class="big-up-arrow"></div>
                                            <div class="small-up-arrow"></div>


                                        </div>
                                    </li>
                                    <li class="m6">
                                        <span>
                                            <span class="after-price">
                                                <span class="price">
                                                    <span class="unit">¥</span>
                                                    <span class="after-price">${r_style.price }</span>
                                                </span>
                                            </span>
                                            <span class="original-price">
                                                <span>${r_style.price }</span>
                                                <span class="may-return">
                                                    可返
                                                    <div class="may-return-tip">
                                                        <div class="big-up-arrow"></div>
                                                        <div class="small-up-arrow"></div>
                                                        酒店确认您正常离店后，3个月内您对订单发表点评，返现<strong>5</strong>元现金券将会发送至您的途牛现金账户，满200元可提现，也可兑换途牛旅游券继续消费。
                                                    </div>
                                                </span>
                                                <span class="price">5</span>
                                            </span>
                                        </span>
                                    </li>
                                    <li class="m7">
                                        <div>
                                            <input type="text" class="hide" name="room"/>
                                            <a href="order.do?r_id=${room.r_id }&uid=${user.uid}" class="btn-book">预订</a>
                                        </div>
                                        <div class="m8">
                                            <span>在线付(少量)</span>
                                            <div class="tip">
                                                <div class="big-up-arrow"></div>
                                                <div class="small-up-arrow"></div>
                                                入住前需要预先支付房款
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                                <ul class="item">
                                    <li class="m1"><span>(自营★质量保证)</span></li>
                                    <li class="m2"><span>${r_style.r_name }</span></li>
                                    <li class="m3"><span>不含早</span></li>
                                    <li class="m4">
                                        <span><a href="#">免费</a></span>
                                        <div class="tip">
                                            <div class="big-up-arrow"></div>
                                            <div class="small-up-arrow"></div>
                                        </div>
                                    </li>
                                    <li class="m5">
                                        <span><a href="#">不可取消</a></span>
                                        <div class="tip">
                                            <div class="big-up-arrow"></div>
                                            <div class="small-up-arrow"></div>
                                        </div>
                                    </li>
                                    <li class="m6">
                                        <span>
                                            <span class="after-price">
                                                <span class="price">
                                                    <span class="unit">¥</span>
                                                    <span class="after-price">${r_style.price }</span>
                                                </span>
                                            </span>
                                            <span class="original-price">
                                                <span>${r_style.price }</span>
                                                <span class="may-return">
                                                    可返
                                                    <div class="may-return-tip">
                                                        <div class="big-up-arrow"></div>
                                                        <div class="small-up-arrow"></div>
                                                        酒店确认您正常离店后，3个月内您对订单发表点评，返现<strong>5</strong>元现金券将会发送至您的途牛现金账户，满200元可提现，也可兑换途牛旅游券继续消费。
                                                    </div>
                                                </span>
                                                <span class="price">5</span>
                                            </span>
                                        </span>
                                    </li>
                                    <li class="m7">
                                        <div>
                                            <input type="text" class="hide" name="room"/>
                                            <a href="#" class="btn-book">预订</a>
                                        </div>
                                        <div class="m8">
                                            <span>在线付(少量)</span>
                                            <div class="tip">
                                                <div class="big-up-arrow"></div>
                                                <div class="small-up-arrow"></div>
                                                入住前需要预先支付房款
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                                <ul class="item">
                                    <li class="m1"><span>(自营★质量保证)</span></li>
                                    <li class="m2"><span>${r_style.r_name }</span></li>
                                    <li class="m3"><span>双早</span></li>
                                    <li class="m4">
                                        <span><a href="#">免费</a></span>
                                        <div class="tip">
                                            <div class="big-up-arrow"></div>
                                            <div class="small-up-arrow"></div>
                                        </div>
                                    </li>
                                    <li class="m5">
                                        <span><a href="#">不可取消</a></span>
                                        <div class="tip">
                                            <div class="big-up-arrow"></div>
                                            <div class="small-up-arrow"></div>
                                        </div>
                                    </li>
                                    <li class="m6">
                                        <span>
                                            <span class="after-price">
                                                <span class="price">
                                                    <span class="unit">¥</span>
                                                    <span class="after-price">${r_style.price}</span>
                                                </span>
                                            </span>
                                            <span class="original-price">
                                                <span>${r_style.price+23}</span>
                                                <span class="may-return">
                                                    可返
                                                    <div class="may-return-tip">
                                                        <div class="big-up-arrow"></div>
                                                        <div class="small-up-arrow"></div>
                                                        酒店确认您正常离店后，3个月内您对订单发表点评，返现<strong>5</strong>元现金券将会发送至您的途牛现金账户，满200元可提现，也可兑换途牛旅游券继续消费。
                                                    </div>
                                                </span>
                                                <span class="price">5</span>
                                            </span>
                                        </span>
                                    </li>
                                    <li class="m7">
                                        <div>
                                            <input type="text" class="hide" name="room"/>
                                            <a href="#" class="btn-book">预订</a>
                                        </div>
                                        <div class="m8">
                                            <span>在线付(少量)</span>
                                            <div class="tip">
                                                <div class="big-up-arrow"></div>
                                                <div class="small-up-arrow"></div>
                                                入住前需要预先支付房款
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                                <ul class="item">
                                    <li class="m1"><span>(自营★质量保证)</span></li>
                                    <li class="m2"><span>大床</span></li>
                                    <li class="m3"><span>双早</span></li>
                                    <li class="m4">
                                        <span><a href="#">免费</a></span>
                                        <div class="tip">
                                            <div class="big-up-arrow"></div>
                                            <div class="small-up-arrow"></div>
                                        </div>
                                    </li>
                                    <li class="m5">
                                        <span><a href="#">不可取消</a></span>
                                        <div class="tip">
                                            <div class="big-up-arrow"></div>
                                            <div class="small-up-arrow"></div>
                                        </div>
                                    </li>
                                    <li class="m6">
                                        <span>
                                            <span class="after-price">
                                                <span class="price">
                                                    <span class="unit">¥</span>
                                                    <span class="after-price">1773</span>
                                                </span>
                                            </span>
                                            <span class="original-price">
                                                <span>1750</span>
                                                <span class="may-return">
                                                    可返
                                                    <div class="may-return-tip">
                                                        <div class="big-up-arrow"></div>
                                                        <div class="small-up-arrow"></div>
                                                        酒店确认您正常离店后，3个月内您对订单发表点评，返现<strong>5</strong>元现金券将会发送至您的途牛现金账户，满200元可提现，也可兑换途牛旅游券继续消费。
                                                    </div>
                                                </span>
                                                <span class="price">5</span>
                                            </span>
                                        </span>
                                    </li>
                                    <li class="m7">
                                        <div>
                                            <input type="text" class="hide" name="room"/>
                                            <a href="#" class="btn-book">预订</a>
                                        </div>
                                        <div class="m8">
                                            <span>在线付(少量)</span>
                                            <div class="tip">
                                                <div class="big-up-arrow"></div>
                                                <div class="small-up-arrow"></div>
                                                入住前需要预先支付房款
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script>
    if (jQuery('.small-pic').length > 0) {
        jQuery('.small-pic').carouFredSel({
            responsive: true,
            width: '100%',
            scroll: 1,
            items: {
                width: 116,
                //  height: '30%',  //  optionally resize item-height
                visible: {
                    min: 1,
                    max: 7
                }
            }
        });
    }
</script>
</body>
</html>
