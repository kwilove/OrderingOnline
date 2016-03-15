<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/12/3
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="nav.jsp"></jsp:include>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>个人中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/pintuer.css">
    <!-- 只有使用字体图标时才需要加载 Font-Awesome -->
    <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/pintuer.js"></script>
    <script src="/js/respond.js"></script>
    <script src="/js/layer/layer.js"></script>
    <script src="/js/common.js"></script>
    <link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon"/>
    <link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon"/>
    <link rel="stylesheet" href="/css/personal_center.css">
    <script src="/js/layer/layer.js"></script>
</head>
<body>
<div class="layout">
    <div class="line">
        <div class="mobile  xl12 xs12 hidden-b hidden-m" style="padding-bottom: 50px;">
            <%--<div class="head-fix fixed bg-green bg-inverse x12" data-style="fixed-top" data-offset-fixed="0" style="z-index: 1">--%>
            <div class="head-fix bg-green bg-inverse x12">
                <span>我的</span>
                <a class="btn-config icon icon-cog float-right"></a>
                <a class="icon icon-bell float-right"></a>
            </div>
            <a class="personal_info bg-green bg-inverse xl12" href="../../personal/personal_info.jsp">
                <span class="xl3">
                    <img class="personal-photo  radius-circle" src="/images/user/face.jpg" alt="">
                </span>
                <span class="xl5 padding">
                    <p class="text-big">19211470762</p>
                    <p>
                        <span class="icon icon-mobile-phone text-large margin-small-right"></span>19211470762
                    </p>
                </span>
                <span class="icon icon-chevron-right text-large float-right"></span>
            </a>

            <div class="bg-white xl12 hidden-s hidden-m" style="height: 70px;line-height: 70px;">
                <div class="xl4 text-center" style="height: 100%;padding-top: 10px;">
                    <p class="text-red" style="margin: 0;"><span class="text-large margin-right">0.0</span>元</p>

                    <p style="margin: 0;;">我的余额</p>
                </div>
                <div class="xl4 text-center" style="height: 100%;padding-top: 10px;">
                    <p class="text-red" style="margin: 0;"><span class="text-large margin-right">0</span>个</p>

                    <p style="margin: 0;;">我的红包</p>
                </div>
                <div class="xl4 text-center" style="height: 100%;padding-top: 10px;">
                    <p class="text-red" style="margin: 0;"><span class="text-large margin-right">0</span>积分</p>

                    <p style="margin: 0;;">我的积分
                </div>
            </div>

            <div class="x12">
                <a class="bg-white x12 xl12 height-large margin-top">
                    <span class="icon-heart text-red text-big margin-big"></span>我的收藏
                </a>
                <a class="bg-white x12 xl12 height-large margin-top">
                    <span class="icon-photo text-blue text-big margin-big"></span>我的收藏
                </a>
            </div>
        </div>

        <div class="fixed-bottom border xl12 hidden-s hidden-m hidden-b" id="bottom-nav"
             style="width: 100%;background: #efefef;z-index: 1;">
            <ul class="nav nav-menu nav-inline nav-justified text-center text-gray">
                <li class="xl4">
                    <a href="index" class="text-gray">
                        <div class="icon-home text-large"></div>
                        订餐
                    </a>
                </li>
                <li class="xl4">
                    <a href="#" class="text-gray">
                        <div class="icon-list text-large"></div>
                        订单
                    </a>
                </li>
                <li class="xl4">
                    <a href="personal_center" class="text-gray text-main">
                        <div class="icon-user text-large"></div>
                        我的
                    </a>
                </li>
            </ul>
        </div>

    </div>
</div>

<script>
    $(".btn-config").on("click", function () {
        $.ajax({
            url: "configPage.jsp",
            type: "get",
            dataType: "html",
            timeput: "10000"
        }).done(function (data) {
            layer.open({
                skin: 'layui-layer-green',
                shift: 3,
                type: 1,
                title: "设置",
                content: data,
                area: ['100%', '100%'],
                shadeClose: true,
            })
        }).error(function () {
            layer.msg("加载页面失败！");
        });
    })
</script>
</body>
</html>
