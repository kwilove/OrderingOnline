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
<title>Insert title here</title>
<%@include file="common.jsp"%>
<style type="text/css">
.food-info {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	width: 80%;
	color: #999;
	font-size: 14px;
	padding-top: 5px;
}
.price {
	color: red;
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="layout">
		<jsp:include page="nav.jsp"></jsp:include>
		<div class="shop" id="">
			<div class="media-inline container">
				<%
					for (int i = 0; i < 20; i++) {
				%>
				<a class="food-box xb6 xm6 xs12 xl12 media media-x clearfix">
					<div class="shop-logo">
						<img src="images/foods/food-1.jpg" class="radius float-left" alt="">
					</div>
					<div class="shop-content media-body">
						<div class="food-name">芝士条</div>
						<div class="shop-starrating">
							<span class="icon-star text-yellow-light"></span><span
								class="icon-star text-yellow-light"></span><span
								class="icon-star text-yellow-light"></span><span
								class="icon-star text-yellow-light"></span><span
								class="icon-star text-gray"></span>
						</div>
						<div class="food-info">芝士条的美味来自棒!约翰独特工艺的新鲜面团、加上特制芝士条的美味来自棒!约翰独特工艺的新鲜面团、加上特制</div>
						<div class="price float-left">￥85</div>
						<div class="float-right" style="height: 34px;padding: 0"><button class="button bg-main text-white radius-rounded add-to-cart">加入购物车</button></div>
					</div>
				</a>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$(".food-box").on("mouseover",function(){
				$(this).find(".food-name").addClass("text-main");
			}).on("mouseout",function(){
				$(this).find(".food-name").removeClass("text-main");
			})
			$(".add-to-cart").on("click",function(){
				var content = "<button class=\"minus text-black radius-rounded\">-</button>";
				content += "<span class=\"count\" style=\"font-size:15px;margin: 5px;\">10</span>";
				content += "<button class=\"plus text-black radius-rounded\">+</button>";
				$(this).removeClass("bg-main text-white").html(content);
			})
			$("body").on("click",".minus",function(){
				console.log($(this).siblings("span.count").text());
// 				$(this).siblings("span.count").html(1);
				$("span.count").text("1");
			})
		})
	</script>
</body>
</html>