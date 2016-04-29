<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.hzj.util.Const"%>
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
<title>订单管理中心</title>
<%@include file="common.jsp"%>
<style type="text/css">
.order-box:hover {
	background-color: #EDEDED;
}
</style>
</head>
<body>
	<div class="layout">
		<jsp:include page="nav.jsp"></jsp:include>
		<div class="container">
			<hr class="bg-main" />
			<div class="table-responsive-y hidden-l hidden-s">
				<table class="table table-hover">
					<tr>
						<th>餐厅名称</th>
						<th>下单时间</th>
						<th>所选食物</th>
						<th>总价</th>
						<th>操作</th>
					</tr>
					<c:choose>
						<c:when test="${not empty varList}">
							<c:forEach items="${varList}" var="var" varStatus="vs">
								<tr class="order-box">
									<td>${var.RESTAURANTNAME }</td>
									<td>${var.CREATETIME }</td>
									<td class="food"><input type="hidden" value="${var.FOOD }"
										data-fgf="${Const.FENGEFU }"></td>
									<td>${var.TOTALPRICE }</td>
									<td>
										<button
											class="border-delete button button-small border-yellow"
											data-order-id="${var.ORDER_ID }">删除</button>
										<c:choose>
											<c:when test="${sessionScope.type == 1 }">
												<c:if test="${var.STATUS == 2 }">
													<button class="arrived button button-small border-green"
														data-order-id="${var.ORDER_ID }">确认送达</button>
												</c:if>
												<c:if test="${var.STATUS == 3 }">
													<button class="evaluation button button-small border-blue"
														data-order-id="${var.ORDER_ID }">评价</button>
												</c:if>
											</c:when>
											<c:when test="${sessionScope.type == 2 }">
												<c:if test="${var.STATUS == 1 }">
													<button class="accept button button-small border-green"
														data-order-id="${var.ORDER_ID }">接受订单</button>
												</c:if>
											</c:when>
										</c:choose>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr class="main_info hidden-l hidden-s">
								<td colspan="100" class="text-center">没有相关数据</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<div>
				<c:choose>
					<c:when test="${not empty varList}">
						<c:forEach items="${varList}" var="var" varStatus="vs">
							<blockquote
								class="order-box border-gray line margin-top hidden-b hidden-m"
								style="padding-bottom: 0;">
								<p class="padding-left">
									餐厅已确认<small class="margin-left">2016-03-21</small> <a
										class="border-delete float-right  margin-small-right"
										data-order-id="${var.ORDER_ID }"> <span
										class="icon-trash-o text-big"></span>
									</a>
								</p>
								<div class="xl2">
									<img src="images/bishengke.jpg" width="80px" height="80px"
										class="radius-circle" />
								</div>
								<div class="xl9 xl1-move margin-bottom">
									<strong class="xl5 margin-big-left float-left">${var.RESTAURANTNAME }</strong> <small
										class="order-detail xl11" style="color: #999">
										<div>
											<span class="margin-big-left">芝士条</span><span
												class="float-right margin-small-right">×5</span>
										</div>
										<div>
											<span class="margin-big-left">芝士条</span><span
												class="float-right margin-small-right">×5</span>
										</div>
										<div>
											<span class="margin-big-left">芝士条</span><span
												class="float-right margin-small-right">×5</span>
										</div>
									</small> <small class="float-right margin-top margin-right">共&nbsp;3&nbsp;份,&nbsp;&nbsp;实付&nbsp;
										<span class="text-big">￥${var.TOTALPRICE }</<span>
									</small>
								</div>
								<c:if test="${var.STATUS == 1 }">
									<button
										class="arrived button button-little bg-green float-right margin-small"
										data-order-id="${var.ORDER_ID }">确认送达</button>
								</c:if>
								<c:if test="${var.STATUS == 3 }">
									<button
										class="evaluation button button-little text-yellow float-right margin-small"
										data-order-id="${var.ORDER_ID }"
										style="border-color: #f60;">评价</button>
								</c:if>
							</blockquote>
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
	</div>
	<script>
		$(".nav li.orderCenter").addClass("active");
		$(function() {
			$(".food input").each(function() {
				var foodArr = $(this).val().split($(this).data("fgf"));
				var foodStr = "";
				for ( var i in foodArr) {
					foodStr += (foodArr[i] + "<br>");
				}
				$(this).parent().html("<small>" + foodStr + "</small>");
			})

			$(".accept").on("click", function() {
				var target = $(this);
				$.ajax({
					url : "order/updateStatus.do",
					type : "post",
					data : {
						"STATUS" : "2",
						"ORDER_ID" : $(target).data("order-id")
					},
					success : function(data) {
						layer.msg("订单已接受！", {
							icon : 6
						});
						$(target).hide();
					},
					error : function(data) {
						layer.msg("订单接受失败！", {
							icon : 7
						});
					}
				});
			});
			
			$(".arrived").on("click", function() {
				var target = $(this);
				layer.confirm('确认送达？', {
					time : 10000, //20s后自动关闭
					btn : [ '确认', '取消' ]
				}, function() {
					$.ajax({
						url : "order/updateStatus.do",
						type : "post",
						data : {
							"STATUS" : "3",
							"ORDER_ID" : $(target).data("order-id")
						},
						success : function(data) {
							layer.msg("你已确认送达！", {
								icon : 6
							});
							$(target).hide();
						},
						error : function(data) {
							layer.msg("订单确认操作失败！", {
								icon : 7
							});
						}
					})
				});
			});

			$(".border-delete").on("click", function() {
				var target = $(this);
				layer.confirm('确认删除？', {
					time : 10000, //20s后自动关闭
					btn : [ '确认', '取消' ]
				}, function() {
					$.ajax({
						url : "order/delete.do",
						type : "post",
						data : {
							"ORDER_ID" : $(target).data("order-id")
						},
						success : function(data) {
							layer.msg("订单删除成功！", {
								icon : 6
							});
							$(target).parents(".order-box").remove();
						},
						error : function(data) {
							layer.msg("订单删除操作失败！", {
								icon : 7
							});
						}
					})
				});
			});

			$(".evaluation").on("click", function() {
				var target = $(this);
				layer.prompt({
					title : '评价',
					formType : 2
				//prompt风格，支持0-2
				}, function(evaluation) {
					$.ajax({
						url : "order/updateStatus.do",
						type : "post",
						data : {
							"STATUS" : "4",
							"EVALUATION" : evaluation,
							"ORDER_ID" : $(target).data("order-id")
						},
						success : function(data) {
							layer.msg("评价完成！", {
								icon : 6
							});
							$(target).hide();
// 							$(target).hide().siblings(".evaluation").show();
						},
						error : function(data) {
							layer.msg("评价失败！", {
								icon : 7
							});
						}
					})
				})
			});
		})
	</script>
</body>
</html>