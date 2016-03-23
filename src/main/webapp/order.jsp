<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.hzj.util.Const"%>
<%@page import="java.util.Date"%>
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
.order-detail {
	padding: 10px;
}
.totalprice {
	margin-top: 10px;
	margin-right: 30px;
	float: right;
}
.totalprice span {
	color: red;
	font-size: 30px;
	float: right;
}
</style>
</head>
<body>

	<div class="container">
		<div class="line">
			<div class="xs12 xm6 xm3-move">

				<form action="order/save.do" method="post" class="form-x">
					<div class="panel">
						<div class="panel-head bg-main">
							<span class="icon-arrow-left text-big  margin" onclick="history.go(-1)"></span>
							<strong class="hidden-s hidden-l">订单详情</strong>
						</div>
						<div class="panel-body" style="padding: 30px;">
							<img src="images/bishengke.jpg" width="50px" height="50px" class="radius-circle float-left hidden-s hidden-l" />
							<img src="images/bishengke.jpg" width="50px" height="50px" class="radius-circle float-right hidden-b hidden-m" style="" />
							<div class="order-detail float-left">
								<div><span class="margin-big-left">芝士条</span><span style="margin-left: 200px;">×5</span></div>
								<div><span class="margin-big-left">芝士条</span><span style="margin-left: 200px;">×5</span></div>
								<div><span class="margin-big-left">芝士条</span><span style="margin-left: 200px;">×5</span></div>
<!-- 								<label>×</label> -->
							</div>
							<hr class="bg-main" />
							<div class="form-group">
								<div class="label">
									<label for="username"> 地址</label>
								</div>
								<div class="field">
									<textarea rows="2" class="input" name="address" placeholder="地址"></textarea>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="contact"> 联系人</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="contact"
										name="contact" size="30" placeholder="联系人" value=""/>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="realname"> 联系电话</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="phone" name="phone"
										size="30" placeholder="联系电话" value="" />
								</div>
							</div>
<!-- 							<div class="form-group"> -->
<!-- 								<div class="label"> -->
<!-- 									<label for="phone"> 手机号</label> -->
<!-- 								</div> -->
<!-- 								<div class="field"> -->
<!-- 									<input type="text" class="input" id="phone" name="phone" -->
<!-- 										size="30" placeholder="" /> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<div class="form-group">
								<div class="totalprice">
									总价:<span>￥85</span>
									<input type="hidden" name="userid" value="${sessionScope.sessionUser.USER_ID}">
									<input type="hidden" name="totalprice" value="85">
									<input type="hidden" name="status" value="1">
									<input type="text" name="createtime" value="<fmt:formatDate value="<%=new Date() %>" pattern="yyyy-MM-dd HH:mm:ss"/>">
								</div>
							</div>
						</div>
						<div class="panel-foot text-center">
							<button type="submit" class="button button-block bg-green text-big">确认支付</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$(".form-group > .label").addClass("hidden-s hidden-l");
		})
	</script>
</body>
</html>