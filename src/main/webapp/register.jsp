<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<%@include file="common.jsp"%>
</head>
<body>
	<div class="container">
		<div class="line">
			<div class="xs6 xm6 xs3-move xm3-move">
				<br /> <br />

				<div class="media media-y  hidden-l">
					<a href=""> <img src="images/40.png" class="radius"
						alt="在线订餐系统" />
					</a>
				</div>
				<br /> <br />

				<form action="user/save.do" method="post" class="form-x">
					<div class="panel">
						<div class="panel-head">
							<strong>用户注册</strong>
						</div>
						<div class="panel-body" style="padding: 30px;">
							<div class="form-group">
								<div class="label">
									<label for="username"> 用户名</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="username" name="username"
										size="30" placeholder="手机/邮箱/账号" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="password"> 密码</label>
								</div>
								<div class="field">
									<input type="password" class="input" id="password"
										name="password" size="30" placeholder="请输入密码" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="password-confirm"> 确认密码</label>
								</div>
								<div class="field">
									<input type="password" class="input" id="password-confirm"
										name="password-confirm" size="30" placeholder="请确认密码" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="phone"> 手机号</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="phone" name="phone"
										size="30" placeholder="" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="address"> 地址</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="address" name="address"
										size="30" placeholder="" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="type"> 头像上传</label>
								</div>
								<div class="field">
									<input type="file" class="input" id="headphoto" name="headphoto"
									 placeholder="" />
								</div>
							</div>
						</div>
						<div class="panel-foot text-center">
							<button type="submit" class="button button-block bg-green text-big">立即注册</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>