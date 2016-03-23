<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/12/3
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../common.jsp" %>
<html>
<head>
    <title></title>
    <script src="../../js/bottom_nav.js"></script>
</head>
<body>
<div class="fixed-bottom border xl12 hidden-s hidden-m hidden-b" id="bottom-nav"
     style="width: 100%;background: #efefef;z-index: 999;">
    <ul class="nav nav-menu nav-inline nav-justified text-center text-gray">
        <li class="xl4">
            <a href="index" class="text-gray">
                <div class="icon-home text-large"></div>
                订餐
            </a>
        </li>
        <li class="xl4">
            <a href="order_records.jsp" class="text-gray">
                <div class="icon-list text-large"></div>
                订单
            </a>
        </li>
        <li class="xl4">
            <a href="personal_center.jsp" class="text-gray">
                <div class="icon-user text-large"></div>
                我的
            </a>
        </li>
    </ul>
</div>
</body>
</html>
