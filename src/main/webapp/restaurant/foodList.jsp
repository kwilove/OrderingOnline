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
<title>个人中心</title>
<%@include file="../common.jsp"%>
<style>
.admin {
	padding: 30px;
	background: #fff;
	border-left: solid 1px #b5cfd9;
	overflow: auto;
}

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
	<jsp:include page="../nav.jsp"></jsp:include>

	<div id="addFoodDialog">
		<div class="dialog">
		<form id="foodForm" class="form-x" action="foodlist/save.do" method="post" enctype="multipart/form-data">
			<div class="dialog-head">
				<span class="close rotate-hover"></span><strong>对话框标题</strong>
			</div>
			<div class="dialog-body">
				
					<input type="hidden" name="RESTAURANTID"
						value="${pd.RESTAURANT_ID }">
					<div class="panel-body">
						<div id="info-enable">
							<div class="form-group">
								<div class="label">
									<label for="telphone">食物图片</label>
								</div>
								<div class="field">
									<c:choose>
										<c:when test="${food.PICTURE == null and food.PICTURE =='' }">
											<img src="${food.PICTURE }" alt="">
										</c:when>
										<c:otherwise>
											<a class="button input-file" href="javascript:void(0);">+
												浏览文件<input size="100" type="file" name="PICTURE" />
											</a>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="foodname">食物名称</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="foodname" name="FOODNAME"
										class="foodname" value="${food.FOODNAME }">
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="foodprice">单价</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="foodprice"
										name="FOODPRICE" value="${food.FOODPRICE }">
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="amount">数量</label>
								</div>
								<div class="field">
									<input type="text" class="input" id="amount" name="AMOUNT"
										value="${food.AMOUNT }">
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label for="info">食物描述</label>
								</div>
								<div class="field">
									<textarea id="info" name="INFO" rows="5" class="input">${food.INFO }</textarea>
								</div>
							</div>
						</div>
					</div>
				
			</div>
			<div class="dialog-foot">
				<button class="button dialog-close">取消</button>
				<button type="submit" class="btn-food-save button bg-green">确认</button>
			</div>
		</form>
		</div>
	</div>

	<%--     <%@include file="nav.jsp" %> --%>
	<div class="container">
		<div class="admin">
			<div class="line-big">
				<div class="xm3">
					<div class="panel border-back">
						<div class="panel-body text-center">
							<img src="${pd.PICTURE }" width="120" class="radius-circle">
							<br> <strong class="restaurantname">${pd.RESTAURANTNAME }</strong>
						</div>
						<div class="panel-foot bg-back border-back">
							<div class="button-group radio">
								<label class="button active"> <input name="pintuer"
									value="yes" checked="checked" type="radio"><span
									class="icon icon-check text-main"></span> 营业中
								</label> <label class="button"> <input name="pintuer" value="no"
									type="radio"><span class="icon icon-times"></span> 休息中
								</label>
							</div>
						</div>
					</div>
					<br>
					<div class="panel">
						<div class="panel-head">
							<strong>信息管理</strong>
						</div>
						<ul class="list-group">
							<li><a href="admin/admin_center.jsp"><span
									class="float-right badge">1</span><span class="icon-user"></span>
									个人信息管理</a></li>
							<li><a
								href="restaurant/enter.do?RESTAURANT_ID=<%=current_user.getString("RESTAURANT_ID")%>"><span
									class="float-right badge">828</span><span
									class="icon-file-text"></span> 餐厅信息管理</a></li>
							<li><a href="order/list.do"><span
									class="float-right badge">3</span><span
									class="icon-shopping-cart"></span> 订单</a></li>
							<li class="bg-back"><a
								href="foodlist/list.do?RESTAURANTID=<%=current_user.getString("RESTAURANT_ID")%>"><span
									class="float-right badge bg-main">10</span><span
									class="icon-list"></span> 菜单管理</a></li>
							<!-- 							<li><span class="float-right badge bg-main">828</span><span -->
							<!-- 								class="icon-database"></span> 数据库</li> -->
						</ul>
					</div>
					<br>
				</div>
				<div class="xm9">
					<div class="alert alert-yellow">
						<span class="close"></span><strong>注意：</strong>您有5件新的订单，<a
							href="#">点击查看</a>。
					</div>
					<div class="alert">
						<div class="media-inline clearfix">
							<div class="media media-y x3">
								<a href="#"><span class="icon-cny text-large"></span> <span
									class="badge bg-red">88.00</span></a>
								<div class="media-body">
									<strong>我的余额</strong>
								</div>
							</div>
							<div class="media media-y x3">
								<a><span class="icon-sign-out text-red text-large"></span></a>
								<div class="media-body">
									<strong>金额转出</strong>
								</div>
							</div>
							<div class="media media-y x3">
								<a href="#"><span class="icon-envelope-o text-large"></span>
									<span class="badge bg-yellow">5</span></a>
								<div class="media-body">
									<strong>我的信息</strong>
								</div>
							</div>
							<div class="media media-y x3">
								<a href="#"><span class="icon-heart text-large"></span> <span
									class="badge bg-red">3</span></a>
								<div class="media-body">
									<strong>顾客评价</strong>
								</div>
							</div>
						</div>
					</div>
					<c:if test="${empty varList }">
						<div class="panel">
							<div class="panel-body text-center"
								style="height: 220px; line-height: 200px;">
								<button style="width: 150px;"
									class="btn-add-rest button button-big border-blue icon-plus">
									添加餐厅</button>
							</div>
						</div>
						<div class="panel">
							<div class="panel-head">
								<strong>餐厅信息</strong>
								<button
									class="btn-info-edit button border-blue icon-edit float-right">
									编辑</button>
								<button style="display: none;"
									class="btn-info-save button border-main icon-save float-right">
									保存</button>
							</div>

						</div>
					</c:if>
					<c:if test="${! empty varList }">
						<div class="table-responsive">
							<table class="table table-hover table-striped">
								<tr>
									<th>序号</th>
									<th>图片</th>
									<th>食物名称</th>
									<th>单价</th>
									<th>剩余</th>
									<th>操作</th>
								</tr>
								<c:choose>
									<c:when test="${not empty varList}">
										<c:forEach items="${varList}" var="var" varStatus="vs">
											<tr>
												<td>${vs.index+1 }</td>
												<td><img src="${var.PICTURE }"
													style="width: 50px; height: 50px;"></td>
												<td class="text-main">${var.FOODNAME }</td>
												<td class="text-red">${var.FOODPRICE }</td>
												<td class="text-blue">${var.AMOUNT }</td>
												<td>
													<button
														class="btn-info-edit button button-little border-blue icon-edit"></button>
													<button
														class="btn-info-delete button button-little border-yellow icon-trash-o"></button>
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
							<button
								class="btn-info-add button bg-main dialogs icon-plus float-left"
								data-toggle="click" data-target="#addFoodDialog" data-mask="1"
								data-width="50%">新增</button>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<div class="layout">
		<div class="line">
			<div class="fixed-bottom border xl12 hidden-s hidden-m hidden-b"
				id="bottom-nav"
				style="width: 100%; background: #efefef; z-index: 1;">
				<ul
					class="nav nav-menu nav-inline nav-justified text-center text-gray">
					<li class="xl4"><a href="index" class="text-gray">
							<div class="icon-home text-large"></div> 订餐
					</a></li>
					<li class="xl4"><a href="#" class="text-gray">
							<div class="icon-list text-large"></div> 订单
					</a></li>
					<li class="xl4"><a href="personal_center"
						class="text-gray text-main">
							<div class="icon-user text-large"></div> 我的
					</a></li>
				</ul>
			</div>
		</div>
	</div>

	<script>
		$(function() {

			$(".btn-add-rest").on("click", function() {
				$(this).parents(".panel").hide();
				$("#panel-edit").show();
			})

			$(".btn-info-edit").on("click", function() {
				$(".btn-info-edit").hide();
				$(".btn-info-save").show();
			})

// 			$(".btn-food-save").on("click", function() {
// 				alert("aaaaa");
// 				$("#infoForm").submit();
// 				$.ajax({
// 					url : "foodlist/save.do",
// 					type : "post",
// 					data : $("#infoForm").serialize(),
// 					dataType : "json",
// 					timeput : "10000"
// 				}).done(function(data) {
// 					if (data.msg == 'success') {
// 						layer.msg("新菜单添加成功！", {
// 							icon : 6
// 						});
// 						$(".btn-info-cancel").hide();
// 						$(".btn-info-save-alt").hide();
// 						$(".btn-info-edit").show();

// 					} else {
// 						layer.msg("菜单添加失败！", {
// 							icon : 7
// 						});
// 					}
// 				}).error(function() {
// 					layer.msg("菜单添加请求失败！", {
// 						icon : 7
// 					});
// 				});
// 			})
		})
	</script>
</body>
</html>
