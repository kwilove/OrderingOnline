<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>餐厅管理员注册界面</title>
<%@include file="../common.jsp"%>
<style type="text/css">
.radio .sex-man.active {
	color: white;
	background-color: #0ae;
}

.radio .sex-woman.active {
	color: white;
	background-color: #f60;
}
</style>
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

				<form action="restaurantadmin/save.do" method="post" class="form-x"
					enctype="multipart/form-data">
					<div class="panel">
						<div class="panel-head">
							<strong>餐厅管理员注册</strong> <a
								class="button bg-blue-light flash-hover float-right"
								href="register.jsp">前往用户注册界面</a>
						</div>
						<div class="panel-body" style="padding: 30px;">
							<div class="form-group">
								<div class="label">
									<label for="adminname"> 用户名</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="adminname"
										name="ADMINNAME" size="30" placeholder="手机/邮箱/账号" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="password"> 密码</label>
								</div>
								<div class="field">
									<input type="password" class="input" id="password"
										name="PASSWORD" size="30" placeholder="请输入密码" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="password-confirm"> 确认密码</label>
								</div>
								<div class="field">
									<input type="password" class="input" id="password-confirm"
										name="PASSWORD-CONFIRM" size="30" placeholder="请确认密码" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="realname"> 真实姓名</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="realname" name="REALNAME"
										size="30" placeholder="" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="sex"> 性别</label>
								</div>
								<div class="field">
									<div class="button-group radio">
										<label class="button border-sub sex-man active"> <input
											name="SEX" value="1" type="radio" checked="checked">男性
										</label> <label class="button border-yellow sex-woman"> <input
											name="SEX" value="0" type="radio">女性
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="phone"> 手机号</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="phone" name="PHONE"
										size="30" placeholder="" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="identitycard"> 身份证号</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="identitycard"
										name="IDENTITYCARD" size="30" placeholder="" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="headphoto"> 头像上传</label>
								</div>
								<div class="field">
									<a class="button input-file" href="javascript:void(0);">+
										浏览文件<input size="100" type="file" id="headphoto"
										name="HEADPHOTO" />
									</a>
								</div>
							</div>
							<button type="submit"
								class="button button-block bg-green text-big margin-top">立即注册</button>
						</div>
						<div class="panel-foot">
							<div class="text-little clearfix">
								<a class="text-sub float-left" href="">前往首页</a> <a
									class="text-sub float-right" href="login.jsp">账号登陆</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("#headphoto").on("change", function() {
			alert("change");
			alert($(this).val());
		})
	</script>
</body>
</html>