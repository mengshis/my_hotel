<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-cn" class="clear" ng-app="myApp">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/personal.css"/>
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="clear" ng-controller="parentCtrl">
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
        <section id="myMsg">
            <div>
                <ul class="ms-nav ms-nav-tabs">
                    <li class="active"><a class='active' data-toggle="ms-tab" href="#personalMsg">基本资料</a></li>
                    <li><a data-toggle="ms-tab" href="#frequentAddr">常用地址</a></li>
                    <li><a data-toggle="ms-tab" href="#frequentPassenger">常用旅客</a></li>
                </ul>
            <div class="ms-tab-content">
                <div class="ms-tab-pane fade in" id="personalMsg">
                    <table class="manage">
                        <tbody>
                        <tr class="person-img">
                            <td>
                                <img src="images/guangzhou.jpg"/>
                                <p><a href="#">上传头像>></a></p>
                            </td>
                        </tr>
                        <tr class="person-info">
                            <td class="title-name">
                                <span style="color: #f00;">*</span>
                                <span>昵称</span>
                            </td>
                            <td class="title-value fade in">
                                8099808063
                            </td>
                            <td class="input-value fade">
                                <input id="nick-name" class="nick-name fill-box" type="text"/>
                                <span class="tip-msg "></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="title-name"></td>
                            <td class="tip-style fade" >昵称要求为4-16个字符，支持中文、英文、数字、“_”、“-”</td>
                        </tr>
                        <tr class="person-info">
                            <td class="title-name">
                                <span style="color: #f00;">*</span>
                                <span>姓名</span>
                            </td>
                            <td class="title-value fade in">
                                蒙施
                            </td>
                            <td class="input-value fade">
                                <input id="real-name" class="real-name fill-box" type="text"/>
                                <span class="tip-msg"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="title-name"></td>
                            <td class="tip-style fade" >姓名要求为2-40位英文或2-20位中文，支持空格，“·”，不能中英混搭</td>
                        </tr>
                        <tr class="person-info">
                            <td class="title-name">
                                <span style="color: #f00;">*</span>
                                <span>手机号</span>
                            </td>
                            <td class="title-value fade in">
                                18883844638
                            </td>
                            <td class="input-value fade">
                                <input  class="tel-hide fill-box" type="text"/>
                                <span class="tip-msg"></span>
                            </td>
                        </tr>
                        <tr class="person-info">
                            <td class="title-name">
                                <span style="color: #f00;">*</span>
                                <span>生日</span>
                            </td>
                            <td class="title-value fade in">
                                8099808063
                            </td>
                            <td class="input-value fade">
                                <select class="birth-input" id="sel_year" rel=""><option value="0">--</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option></select>
                                年
                                <select class="birth-input" id="sel_month" rel=""><option value="0">--</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
                                月
                                <select class="birth-input" id="sel_day" rel=""><option value="0">--</option></select>
                                日
                            </td>

                        </tr>
                        <tr class="personal-info">
                            <td class="title-name">
                                <span style="color:red">*&nbsp;</span>性别：
                            </td>
                            <td class="title-value fade in">
                                未设置&nbsp;&nbsp;&nbsp;<span class="fill-tip">方便对您称呼</span>
                                <input type="hidden" class="old-sex-type" value="9">
                            </td>
                            <td class="input-value fade ">
                                <input type="radio" class="sex" name="sex" value="1"> 男
                                &nbsp;&nbsp;&nbsp;
                                <input id="female" type="radio" class="sex" name="sex" value="0"> 女
                                <span class="tip-msg"></span>
                            </td>
                        </tr>
                        <tr class="personal-info">
                            <td class="title-name">
                                邮箱：
                            </td>
                            <td class="title-value fade in">
                                1002163678@qq.com&nbsp;&nbsp;&nbsp;
                                <a href="https://i.tuniu.com/check-email/" class="modify-tel">激活/修改邮箱&gt;&gt;</a>
                                <input type="hidden" class="old-email-address" value="1002163678@qq.com">
                            </td>
                            <td class="input-value fade">
                                1002163678@qq.com&nbsp;&nbsp;&nbsp;<a href="https://i.tuniu.com/check-email/" class="modify-tel">激活/修改邮箱&gt;&gt;</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="J-btn">
                                <div id="edit-btn" class="edit fade in">编辑</div>
                                <div class="save-btn fade">保存</div>
                                <div class="cancle-btn fade">取消</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="ms-tab-pane fade" id="frequentAddr">
                    <div class="my-used-contact my-used-add-wrap clear">
                        <div class="my-used-contact-add">
                            <div class="search-name right">
                                <p>填写常用地址，帮您快速完成预订</p>
                            </div>
                            <a id="add-addr" href="#" class="add-new-btn lf">
                                <b>+</b>
                                添加新地址
                            </a>
                        </div>
                        <div class="my-used-contact-list clear fade">
                            <dl class="edit-add clear">
                                <dt>
                                <h4>添加新地址</h4>
                                </dt>
                                <dd>
                                    <div class="contact-info">
                                        <ul>
                                            <li>
                                                <span><i>*</i>姓名</span>
                                                <div class="single">
                                                    <input class="contact-name" type="text"/>
                                                </div>
                                                <div class="tips">
                                                    请输入正确的用户名
                                                </div>
                                            </li>
                                            <li class="clear single">
                                                <span><i>*</i>省市</span>
                                                <div class="single">
                                                    <div class="sele left">
                                                        <h5>选择省份</h5>
                                                        <div class="province">
                                                            <a href="#">北京</a>
                                                            <a href="#">上海</a>
                                                            <a href="#">深圳</a>
                                                            <a href="#">广州</a>
                                                        </div>
                                                    </div>
                                                    <div class="sele left">
                                                        <h5>北京</h5>
                                                        <div class="province">
                                                            <a href="#">北京</a>
                                                            <a href="#">上海</a>
                                                            <a href="#">深圳</a>
                                                            <a href="#">广州</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="clear">
                                                <span><i>*</i>详细地址</span>
                                                <div class="single">
                                                    <input class="contact-name" type="text"/>
                                                </div>
                                                <div class="tips">
                                                    请提供详细地址
                                                </div>
                                            </li>
                                            <li>
                                                <span><i>*</i>联系电话</span>
                                                <div class="single">
                                                    <input class="contact-name" type="text"/>
                                                </div>
                                                <div class="tips">
                                                    请输入正确的手机号码
                                                </div>
                                            </li>
                                            <li>
                                                <span><i>*</i>邮编</span>
                                                <div class="single">
                                                    <input class="contact-name" type="text"/>
                                                </div>
                                                <div class="tips">
                                                    请输入正确的邮编
                                                </div>
                                            </li>
                                            <li>
                                                <a class="submit-btn" href="#">保存</a>
                                                <a href="#" class="cancle-btn">取消</a>
                                            </li>
                                        </ul>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <div class="ms-tab-pane fade" id="frequentPassenger">
                    <div class="my-used-contact my-used-add-wrap clear">
                        <div class="my-used-contact-add">
                            <a href="#" id="add-customer" class="add-new-btn lf">
                                <b>+</b>
                                添加常用旅客
                            </a>
                        </div>
                        <div class="my-used-contact-list clear fade">
                            <dl class="edit-add clear">
                                <dt>
                                <h4>添加新旅客</h4>
                                </dt>
                                <dd>
                                    <div class="contact-info">
                                        <ul>
                                            <li>
                                                <span><i>*</i>姓名</span>
                                                <div class="single">
                                                    <input class="contact-name" type="text"/>
                                                </div>
                                                <div class="tips">
                                                    请输入正确的用户名
                                                </div>
                                            </li>
                                            <li class="clear">
                                                <span><i>*</i>身份证</span>
                                                <div class="single">
                                                    <input class="contact-name" type="text"/>
                                                </div>
                                                <div class="tips">
                                                    证件类型不能重复，请重新选择
                                                </div>
                                            </li>
                                            <li>
                                                <span><i>*</i>联系电话</span>
                                                <div class="single">
                                                    <input class="contact-name" type="text"/>
                                                </div>
                                                <div class="tips">
                                                    请输入正确的手机号码
                                                </div>
                                            </li>
                                            <li>
                                                <span><i>*</i>邮编</span>
                                                <div class="single">
                                                    <input class="contact-name" type="text"/>
                                                </div>
                                                <div class="tips">
                                                    请输入正确的邮编
                                                </div>
                                            </li>
                                            <li>
                                                <span><i>*</i>性别</span>
                                                <div class="single">
                                                    <input class="sex" type="radio"/>男
                                                    <input class="sex" type="radio"/>女
                                                </div>
                                            </li>
                                            <li>
                                                <a class="submit-btn" href="#">保存</a>
                                                <a href="#" class="cancle-btn">取消</a>
                                            </li>
                                        </ul>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
</div>

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/personal.js"></script>
<script src="js/ionic.bundle.min.js"></script>

<script>


</script>
<script>

</script>
</body>
</html>
