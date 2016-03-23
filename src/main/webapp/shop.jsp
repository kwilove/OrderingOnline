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
#shoppingCart-botton {
	filter:alpha(opacity=90);  
	-moz-opacity:0.9;
    -khtml-opacity: 0.9;
    opacity: 0.9;
}
.totalPrice {
	margin-left: 20px;
	font-size: 30px;
}
</style>
</head>
<body>
	<div class="layout">
	
		<jsp:include page="nav.jsp"></jsp:include>
		
		<div class="layout bg hidden-b hidden-m hidden-s fixed" style="z-index: 999;">
			<div class="container-layout height-large bg-main bg-inverse border border-bottom">
				<span class="float-right margin-right icon-search text-large"
					onclick="prompt('请输入:')"></span>
				<span class="icon-arrow-left text-large  margin-left" onclick="history.go(-1)"></span>
			</div>
		</div>
		
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
		
		<div id="shoppingCart-botton" class="layout bg hidden-b hidden-m fixed-bottom" style="z-index: 999;">
			<div class="container-layout height-large bg-black bg-inverse">
				<span class="icon-shopping-cart text-large  margin-left"></span>
				<span class="totalFoodCount  badge radius-circle" style="position: relative;right: 5px;top: -10px;">0</span>
				<span class="totalPrice">￥85</span>
				<a href="order.jsp" class="button button-big bg-main radius-none float-right" href="">去结算</a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$(".food-box").on("mouseover",function(){
				$(this).find(".food-name").addClass("text-main");
			}).on("mouseout",function(){
				$(this).find(".food-name").removeClass("text-main");
			});
			$("body").on("click",".add-to-cart",function(){
				var content = "<button class=\"minus text-black radius-rounded\">-</button>";
				content += "<span class=\"foodCount\" style=\"font-size:15px;margin: 5px;\">1</span>";
				content += "<button class=\"plus text-black radius-rounded\">+</button>";
				$(this).removeClass("bg-main text-white").parent("div").html(content);
				$(".totalFoodCount").addClass("bg-green").each(function(){
					$(this).text(parseInt($(this).text()) + 1);
				});
			}).on("click",".minus",function(e){
				e.stopPropagation()
				var foodCount = $(this).siblings("span.foodCount").text();
				if(foodCount > 1){
					$(this).siblings("span.foodCount").html(parseInt(foodCount) - 1);
				}else{
					$(this).parent("div").html('<button class="button bg-main text-white radius-rounded add-to-cart">加入购物车</button>');
				}
				$(".totalFoodCount").each(function(){
					$(this).text(parseInt($(this).text()) - 1);
				});
				if(parseInt($(".totalFoodCount").text()) == 0){
					$(".totalFoodCount").removeClass("bg-green");
				}
			}).on("click",".plus",function(e){
				e.stopPropagation()
				var foodCount = parseInt($(this).siblings("span.foodCount").text());
				$(this).siblings("span.foodCount").text(foodCount + 1);
				$(".totalFoodCount").each(function(){
					$(this).text(parseInt($(this).text()) + 1);
				});
			});
		})
	</script>
</body>
</html>