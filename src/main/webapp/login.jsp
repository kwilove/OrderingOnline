<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/27
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title>用户登陆</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="container">
    <div class="line">
        <div class="xs6 xm4 xs3-move xm4-move">
            <br/>
            <br/>
            <div class="media media-y  hidden-l">
                <a href="http://www.pintuer.com" target="_blank">
                    <img src="images/logo.png" class="radius" alt="在线订餐系统"/>
                </a>
            </div>
            <br/>
            <br/>

            <form action="index.jsp" method="post">
                <div class="panel">
                    <div class="panel-head"><strong>登录界面</strong></div>
                    <div class="panel-body" style="padding:30px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input" name="admin" placeholder="登录账号"
                                       data-validate="required:请填写账号,length#>=5:账号长度不符合要求"/>
                                <span class="icon icon-user"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input" name="password" placeholder="登录密码"
                                       data-validate="required:请填写密码,length#>=8:密码长度不符合要求"/>
                                <span class="icon icon-key"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field">
                                <input type="text" class="input" name="passcode" placeholder="填写右侧的验证码"
                                       data-validate="required:请填写右侧的验证码"/>
                                <img src="images/passcode.jpg" width="80" height="32" class="passcode"/>
                            </div>
                        </div>
                    </div>
                    <div class="panel-foot text-center">
                        <button class="button button-block bg-green text-big">立即登陆</button>
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
