<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/12/2
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common.jsp"%>
<html>
<head>
    <style>
        #bottom-nav .nav a {
            padding: 0;
            font-size: 10px;;
        }
    </style>
</head>
<body>
<div class="top hidden-l">
    <div class="layout bg hidden-l">
        <div class="container-layout height-big bg-green bg-inverse">
                    <span class="float-right padding-large-right margin-right">
                         <a href="#" class="win-homepage">设为首页</a> | <a href="#" class="win-favorite">加入收藏</a>
                    </span>欢迎进入在线订餐平台
        </div>
    </div>
    <div class="container padding-big-top padding-big-bottom">
        <div class="line">
            <div class="xl12 xs2 xm2 xb1">
                <button class="button icon-navicon float-right bg-white" data-target="#header-menu">
                </button>
                <a href="index.jsp"><img src="images/40.png"></a>
            </div>
            <div class=" xl12 xs10 xm10 xb11 padding-top nav-navicon" id="header-menu">
                <div class="xs8 xm8 xb6">
                    <ul class="nav nav-menu nav-inline nav-pills nav-big">
                        <li class="active"><a href="#">首页订餐</a></li>
                        <li><a href="#">我的订单</a></li>
                        <li><a href="#"></a></li>
                        <%--<li><a href="#">更多<span class="arrow"></span></a>--%>
                        <%--<ul class="drop-menu">--%>
                        <%--<li><a href="#">组件</a></li>--%>
                        <%--<li><a href="#">模块<span class="arrow"></span></a>--%>
                        <%--<ul>--%>
                        <%--<li><a href="#">头部</a></li>--%>
                        <%--<li><a href="#">导航</a></li>--%>
                        <%--<li><a href="#">底部</a></li>--%>
                        <%--</ul>--%>
                        <%--</li>--%>
                        <%--</ul>--%>
                        <%--</li>--%>
                    </ul>
                </div>
                <div class="xs4 xm4 xb3">
                    <form>
                        <div class="input-group padding-little-top">
                            <input class="input" name="keywords" size="30" placeholder="关键词" type="text">
                                <span class="addbtn">
                                    <button type="button" class="button bg-main icon-search">搜!</button>
                                </span>
                        </div>
                    </form>
                </div>
                <%
                    Object current_user = session.getAttribute("current_user");
                    if (current_user == null) {
                %>
                <div class="hidden-s hidden-m xb2 xb1-move" id="no_user">
                    <div class="xl12 xb12 text-red">
                        <span class="icon-phone text-main text-big margin-big-left margin-small-right"></span>
                        400-123-4567
                    </div>
                    <div class="xl12 xb12 text-small">
                        <span class="icon-user text-main text-big margin-big-left margin-small-right"></span>
                        <a href="#">注册</a> <span class="text-little text-gray">|</span>
                        <a href="login.jsp">登录</a>
                    </div>
                </div>
                <% } else {
                %>
                <div class="hidden-s hidden-m xb2 xb1-move" id="user_login">
                    <a href="personal_center.jsp"><img class="radius-circle float-right margin-large-right" src="images/user/face.jpg"
                                     alt="" style="width: 40px;height: 40px;"></a>
                    <%--<ul>--%>
                    <%--<li><a href="#">头部</a></li>--%>
                    <%--<li><a href="#">导航</a></li>--%>
                    <%--<li><a href="#">底部</a></li>--%>
                    <%--</ul>--%>
                </div>
                <% }%>
            </div>
        </div>
    </div>
</div>

<div class="sidebar  hidden-l hidden-s">
    <div class="sidebar-tabs" v style="width: 25px;height: 100%;float: left">
        <div class="toolbar-tabs-middle text-center">
            <button class="button icon-navicon" data-target="#nav-link"></button>
            <ul class="nav nav-navicon text-center" id="nav-link" style="height: 100%;">
                <li class="tips" data-toggle="hover" data-place="left"
                    data-style="bg-gray bg-inverse text-center text-large radius" data-width="100px" title="我的订单">
                    <a href="#" class="toolbar-btn icon-file-text text-big"></a>
                </li>
                <li><a href="#" class="toolbar-cartbtn icon-shopping-cart">购物车</a></li>
                <li class="tips" data-toggle="hover" data-place="left"
                    data-style="bg-gray bg-inverse text-center text-large radius" data-width="100px" title="我的信息">
                    <a href="#" class="icon-envelope text-big"></a>
                </li>
                <li class="tips" data-toggle="hover" data-place="left"
                    data-style="bg-gray bg-inverse text-center text-large radius" data-width="100px" title="浏览历史">
                    <a href="#" class="icon-history text-big"></a>
                </li>
            </ul>
        </div>
        <a class="button win-backtop bg-inverse icon-arrow-up" style="position: absolute;bottom: 0">返回顶部</a>
    </div>
</div>

</body>
</html>
