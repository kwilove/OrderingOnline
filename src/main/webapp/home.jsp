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
<meta charset="utf-8" />
<title>网上订餐系统</title>
<%@include file="common.jsp"%>
</head>
<body>
	<div class="layout">
		<jsp:include page="nav.jsp"></jsp:include>
		<%--     <%@include file="nav.jsp" %> --%>
		<div
			class="container field field-icon-right margin-top margin-bottom form-big  hidden-b hidden-m hidden-s">
			<span class="icon icon-search margin-right"
				style="line-height: 46px;"></span> <input class="input" type="text"
				placeholder="关键字" size="30" name="keywords" />
		</div>
		<div class="ico container bg-white  hidden-b hidden-m hidden-s">
			<a class="ico-a"> <img src="ico/0.png" alt="" /><span>品牌店</span>
			</a> <a class="ico-a"> <img src="ico/10.png" alt="" /><span>预订早餐</span>
			</a> <a class="ico-a"> <img src="ico/14.png" alt="" /><span>新店特惠</span>
			</a> <a class="ico-a"> <img src="ico/29.png" alt="" /><span>下午茶</span>
			</a> <a class="ico-a"> <img src="ico/36.png" alt="" /><span>果蔬生鲜</span>
			</a> <a class="ico-a"> <img src="ico/44.png" alt="" /><span>便利店</span>
			</a>
		</div>

		<div class="loop container hidden-l hidden-s">
			<div class="banner" data-pointer="1" data-interval="6" data-item="1"
				data-small="1" data-middle="1" data-big="1" data-style="border-red">
				<div class="carousel" style="width: 2562px;">
					<div class="item" style="width: 854px;">
						<img src="images/1.jpg" class="radius float-left" alt="">
					</div>
					<div class="item" style="width: 854px;">
						<img src="images/2.jpg" class="radius float-left" alt="">
					</div>
					<div class="item" style="width: 854px;">
						<img src="images/3.jpg" class="radius float-left" alt="">
					</div>
				</div>
				<ul class="pointer border-green" style="left: 553px;">
					<li class="active" value="1"></li>
					<li class="" value="2"></li>
					<li class="" value="3"></li>
				</ul>
				<div class="pager-prev icon-angle-left"></div>
				<div class="pager-next icon-angle-right"></div>
			</div>
		</div>

		<div class="type container margin-big-top">
			<ul
				class="nav nav-menu nav-inline nav-tabs border-main nav-navicon  hidden-l"
				id="shop-type">
				<li class="nav-head text-gray"><h4>商家分类:</h4></li>
				<li class="active"><a href="">全部商家</a></li>
				<li><a href="">品牌商家</a></li>
				<li><a href="">快餐类</a></li>
				<li><a href="">正餐类</a></li>
				<li><a href="">小吃零食</a></li>
				<li><a href="">甜品饮品</a></li>
				<li><a href="">果蔬生鲜</a></li>
				<li><a href="">鲜花蛋糕</a></li>
				<li><a href="">商超类</a></li>
			</ul>
			<div class="hidden-b hidden-m hidden-s xl12">
				<div class="ui-select xl4">
					<span>分类</span><span class="icon-caret-down margin-small-left"></span>
					<select>
						<option>全部商家</option>
						<option>品牌商家</option>
						<option>快餐类</option>
						<option>正餐类</option>
						<option>小吃零食</option>
						<option>甜品饮品</option>
						<option>果蔬生鲜</option>
						<option>鲜花蛋糕</option>
						<option>商超类</option>
					</select>
				</div>
				<div class="ui-select xl4">
					<span>排序</span><span class="icon-caret-down margin-small-left"></span>
					<select>
						<option>排序</option>
					</select>
				</div>
				<div class="ui-select xl4">
					<span>筛选</span><span class="icon-caret-down margin-small-left"></span>
					<select>
						<option>筛选</option>
					</select>
				</div>
			</div>
		</div>

		<%--<button class="button icon-navicon" data-target="#nav-tabs"></button>--%>
		<div class="shop" id="">
			<div class="media-inline container">
				<div class="shop-info shop-info-hide x3   hidden-l hidden-s">
					<h4>必胜客</h4>
					<hr>
					<div>
						<p>
							<span class="tag bg-dot">减</span> 满120元减30元<span class="text-red">（手机客户端专享）</span>
						</p>

						<p>
							<span class="tag bg-yellow">抵</span> <span
								style="margin-left: 5px;">在该店使用优惠券可折价10元<span
								class="text-red">（手机客户端专享）</span></span>
						</p>

						<p>
							<b
								style="background: #fff; color: #4B9A18; border: 1px solid; padding: 0;">保</b>
							<span style="margin-left: 5px">已加入“外卖保”计划，食品安全有保障</span>
						</p>

						<p>
							<span
								style="background: #fff; color: #FF4E00; border: 1px solid; padding: 0;">付</span>
							<span style="margin-left: 5px">可使用支付宝、微信、手机QQ进行在线支付</span>
						</p>

						<div
							style="text-align: center; background-color: #e5e5e5; padding: 5px; margin-bottom: 20px;">
							<span>30 元奇松</span> <span
								style="margin-left: 20px; margin-right: 20px;">|</span> <span>配送费
								0 元</span>
						</div>
						<div class="text-indent">
							订餐平台郑重承诺，您的餐品60分钟内送达。如时间超过70分钟，此单赠送一张30元优惠券，超过90分钟，此单赠送两张30元优惠券。
						</div>
					</div>
				</div>
				<c:choose>
					<c:when test="${not empty varList}">
						<c:forEach items="${varList}" var="var" varStatus="vs">
							<a class="shop-box xb3 xm3 xs6 xl12 media media-x clearfix"
								href="foodlist/listByRestaurantId.do?restaurantid=${var.RESTAURANT_ID }">
								<div class="shop-logo">
									<img src="${var.PICTURE }" class="radius float-left"
										alt=""> <span>37 分钟</span>
								</div>
								<div class="shop-content media-body">
									<div class="shop-name">${var.RESTAURANTNAME }</div>
									<div class="shop-starrating float-left">
										<span class="icon-star text-yellow"></span><span
											class="icon-star text-yellow"></span><span
											class="icon-star text-yellow"></span><span
											class="icon-star text-yellow"></span><span
											class="icon-star text-gray"></span>
									</div>
									<span class="shop-monthsales">月售581单</span>

									<div class="shop-cost">15元起送 / 免费配送</div>
									<div class="rstblock-activity">
										<span class="tag bg-dot">减</span> <span class="tag bg-yellow">抵</span>
										<span
											style="background: #fff; color: #4B9A18; border: 1px solid; padding: 0;">保</span>
										<span
											style="background: #fff; color: #FF4E00; border: 1px solid; padding: 0;">付</span>
									</div>
								</div>
							</a>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div class="main_info text-center  hidden-b hidden-m">
							没有相关数据
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<div class="fixed-bottom border xl12 hidden-s hidden-m hidden-b"
			id="bottom-nav" style="width: 100%; background: #efefef; z-index: 1;">
			<ul
				class="nav nav-menu nav-inline nav-justified text-center text-gray">
				<li class="xl4"><a href="index" class="text-gray text-main">
						<div class="icon-home text-large"></div>订餐
				</a></li>
				<li class="xl4"><a href="#" class="text-gray">
						<div class="icon-list text-large"></div>订单
				</a></li>
				<li class="xl4"><a href="personal_center" class="text-gray">
						<div class="icon-user text-large"></div>我的
				</a></li>
			</ul>
		</div>

		<div class="footer">
			<div class="container hidden-l hidden-s">
				<div class="border-bottom padding-top">
					<div class="text-center">
						<ul class="nav nav-inline">
							<li class="active"><a href="#">网站首页</a></li>
							<li><a href="#">新闻资讯</a></li>
							<li><a href="#">产品中心</a></li>
							<li><a href="#">技术反馈</a></li>
							<li><a href="#">留言反馈</a></li>
							<li><a href="#">联系方式</a></li>
						</ul>
					</div>
					<div class="text-center height-big">版权所有 © huangzijing.com
						All Rights Reserved，图ICP备：1234567890</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(".nav li.home").addClass("active");
	</script>
</body>
</html>