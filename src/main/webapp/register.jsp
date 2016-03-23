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
									<label for="realname"> 真实姓名</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="realname" name="realname"
										size="30" placeholder="" />
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="sex"> 性别</label>
								</div>
								<div class="field">
									<div class="button-group radio">
										<label class="button border-sub sex-man active">
											<input name="sex-radio" value="1" type="radio" checked="checked">男性
										</label>
										<label class="button border-yellow sex-woman">
											<input name="sex-radio" value="0" type="radio">女性
										</label>
									</div>
									<input type="hidden" class="input" name="sex" value="1"/>
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
									<label for="headphoto"> 头像上传</label>
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
	<script type="text/javascript">
		$("input[type='radio']").on("click",function(){
// 			$(this).parents(".radio").find("input[type='radio']").attr("checked",false);
// 			$(this).attr("checked",true);
			$("input[name='sex']").val($(this).val());
		})
	</script>
</body>
</html>