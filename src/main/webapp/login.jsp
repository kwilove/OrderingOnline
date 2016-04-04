<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/27
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8" />
	<%@include file="common.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>用户登陆</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" href="css/pintuer.css">
    <!-- 只有使用字体图标时才需要加载 Font-Awesome -->
    <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/respond.js"></script>
    <script src="js/layer/layer.js"></script>
    <script src="js/common.js"></script>
    <link type="image/x-icon" href="http://www.pintuer.com/favicon.ico" rel="shortcut icon"/>
    <link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon"/>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="container">
    <div class="line">
        <div class="xs6 xm4 xs3-move xm4-move">
            <br/>
            <br/>

            <div class="media media-y  hidden-l">
                <a href="">
                    <img src="images/40.png" class="radius" alt="在线订餐系统"/>
                </a>
            </div>
            <br/>
            <br/>

            <form action="loginCheck.do" method="post">
                <div class="panel">
                    <div class="panel-head"><strong>登录界面</strong></div>
                    <div class="panel-body" style="padding:30px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input" name="username" placeholder="登录账号"
                                       data-validate="required:请填写账号,length#>=5:账号长度不符合要求"/>
                                <span class="icon icon-user"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input" name="password" placeholder="登录密码"
                                       data-validate="required:请填写密码,length#>=1:密码长度不符合要求"/>
                                <span class="icon icon-key"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field">
                                <input type="text" class="input" name="passcode" placeholder="填写右侧的验证码"/>
<!--                                        data-validate="required:请填写右侧的验证码"/> -->
                                <img src="images/passcode.jpg" width="80" height="32" class="passcode"/>
                            </div>
                        </div>
                        <button class="button button-block bg-green text-big margin-top">立即登陆</button>
                    </div>
                    <div class="panel-foot text-center">
                    	<div class="text-right text-little">
                            <a class="text-sub" href="register.jsp">账号注册</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="hidden">
    <script src="http://s4.cnzz.com/stat.php?id=5952475&web_id=5952475" language="JavaScript"></script>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F637f0fe043ea4b7f59c05d4491e27667' type='text/javascript'%3E%3C/script%3E"));
        })();
    </script>
</div>

</body>
</html>
