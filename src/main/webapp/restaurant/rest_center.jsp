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
							<li class="bg-back"><a
								href="restaurant/enter.do?RESTAURANT_ID=<%=current_user.getString("RESTAURANT_ID")%>"><span
									class="float-right badge bg-main">828</span><span
									class="icon-file-text"></span> 餐厅信息管理</a></li>
							<li><a href="order/list.do"><span
									class="float-right badge">3</span><span
									class="icon-shopping-cart"></span> 订单</a></li>
							<li><a
								href="foodlist/list.do?RESTAURANTID=<%=current_user.getString("RESTAURANT_ID")%>"><span
									class="float-right badge">10</span><span class="icon-list"></span>
									菜单管理</a></li>
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
					<c:if test="${empty pd }">
						<div class="panel">
							<div class="panel-body text-center"
								style="height: 220px; line-height: 200px;">
								<button style="width: 150px;"
									class="btn-add-rest button button-big border-blue icon-plus">
									添加餐厅</button>
							</div>
						</div>
						<div class="panel" id="panel-edit" style="display: none;">
							<div class="panel-head">
								<strong>餐厅信息</strong>
								<button
									class="btn-info-cancel button border-yellow icon-times float-right">
									取消</button>
								<button style="display: none;"
									class="btn-info-edit button border-blue icon-edit float-right">
									编辑</button>
								<button
									class="btn-info-save-alt button border-main icon-save float-right">
									保存</button>

							</div>
							<form id="infoForm" class="form-x">
								<input type="hidden" name="RESTAURANT_ID"
									value="<%=current_user.getString("RESTAURANT_ID")%>">
								<div class="panel-body">
									<div id="info-enable">
										<div class="form-group">
											<div class="label">
												<label for="restaurantname">餐厅名称</label>
											</div>
											<div class="field">
												<input type="text" class="input" id="restaurantname"
													name="RESTAURANTNAME" class="restaurantname"
													value="${pd.RESTAURANTNAME }">
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="telphone">餐厅电话</label>
											</div>
											<div class="field">
												<input type="text" class="input" id="telphone"
													name="TELPHONE" value="${pd.TELPHONE }">
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="type">经营类型</label>
											</div>
											<div class="field field-icon-right">
												<select class="input" name="TYPE" id="type">
													<option>快餐类</option>
													<option>正餐类</option>
													<option>小吃零食</option>
													<option>甜品饮品</option>
													<option>果蔬生鲜</option>
													<option>鲜花蛋糕</option>
													<option>商超类</option>
												</select> <span class="icon icon-caret-down"></span>
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="worktime">营业时间</label>
											</div>
											<div class="field">
												<input type="text" class="input" id="worktime"
													name="WORKTIME" value="${pd.WORKTIME }"
													placeholder="00:00 - 23:59">
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="address">餐厅地址</label>
											</div>
											<div class="field">
												<input type="text" class="input" id="address" name="ADDRESS"
													value="${pd.ADDRESS }">
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="info">餐厅介绍</label>
											</div>
											<div class="field">
												<textarea id="info" name="INFO" rows="5" class="input"
													placeholder="多行文本框">${pd.INFO }</textarea>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</c:if>
					<c:if test="${! empty pd }">
						<div class="panel">
							<div class="panel-head">
								<strong>餐厅信息</strong>
								<button style="display: none;"
									class="btn-info-cancel button border-yellow icon-times float-right">
									取消</button>
								<button
									class="btn-info-edit button border-blue icon-edit float-right">
									编辑</button>
								<button style="display: none;"
									class="btn-info-save button border-main icon-save float-right">
									保存</button>
							</div>
							<form id="infoForm" class="form-x">
								<input type="hidden" name="RESTAURANT_ID"
									value="${pd.RESTAURANT_ID }">
								<div class="panel-body">
									<div id="info-enable" style="display: none;">
										<div class="form-group">
											<div class="label">
												<label for="restaurantname">餐厅名称</label>
											</div>
											<div class="field">
												<input type="text" class="input" id="restaurantname"
													name="RESTAURANTNAME" class="restaurantname"
													value="${pd.RESTAURANTNAME }">
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="telphone">餐厅电话</label>
											</div>
											<div class="field">
												<input type="text" class="input" id="telphone"
													name="TELPHONE" value="${pd.TELPHONE }">
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="type">经营类型</label>
											</div>
											<div class="field field-icon-right">
												<select class="input" name="TYPE" id="type">
													<option>快餐类</option>
													<option>正餐类</option>
													<option>小吃零食</option>
													<option>甜品饮品</option>
													<option>果蔬生鲜</option>
													<option>鲜花蛋糕</option>
													<option>商超类</option>
												</select> <span class="icon icon-caret-down"></span>
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="worktime">营业时间</label>
											</div>
											<div class="field">
												<input type="text" class="input" id="worktime"
													name="WORKTIME" value="${pd.WORKTIME }"
													placeholder="00:00 - 23:59">
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="address">餐厅地址</label>
											</div>
											<div class="field">
												<input type="text" class="input" id="address" name="ADDRESS"
													value="${pd.ADDRESS }">
											</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label for="info">餐厅介绍</label>
											</div>
											<div class="field">
												<textarea id="info" name="INFO" rows="5" class="input"
													placeholder="多行文本框">${pd.INFO }</textarea>
											</div>
										</div>
									</div>
								</div>

								<table class="table" id="info-disable">
									<tbody>
										<tr>
											<td width="200" align="center">餐厅名称</td>
											<td class="restaurantname">${pd.RESTAURANTNAME }</td>
										</tr>
										<tr>
											<td align="center">餐厅电话</td>
											<td class="telphone">${pd.TELPHONE }</td>
										</tr>
										<tr>
											<td align="center">经营类型</td>
											<td class="type">${pd.TYPE }</td>
										</tr>
										<tr>
											<td align="center">营业时间</td>
											<td class="worktime">${pd.WORKTIME }</td>
										</tr>
										<tr>
											<td align="center">餐厅地址</td>
											<td class="address">${pd.ADDRESS }</td>
										</tr>
										<tr>
											<td align="center">餐厅介绍</td>
											<td class="info">${pd.INFO }</td>
										</tr>
									</tbody>
								</table>
							</form>
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
				$("#info-disable").hide();
				$("#info-enable").show();
			})

			$(".btn-info-save").on("click", function() {
				$.ajax({
					url : "restaurant/edit.do",
					type : "post",
					data : $("#infoForm").serialize(),
					dataType : "json",
					timeput : "10000"
				}).done(function(data) {
					if (data.msg == 'success') {
						layer.msg("餐厅信息修改成功！", {
							icon : 6
						});
						$(".btn-info-save").hide();
						$(".btn-info-edit").show();
						$("#info-enable").hide();
						$("#info-disable").show();
					} else {
						layer.msg("餐厅信息修改失败！", {
							icon : 7
						});
					}
				}).error(function() {
					layer.msg("餐厅信息修改请求失败！", {
						icon : 7
					});
				});
			})

			$(".btn-info-save-alt").on("click", function() {
				$.ajax({
					url : "restaurant/save.do",
					type : "post",
					data : $("#infoForm").serialize(),
					dataType : "json",
					timeput : "10000"
				}).done(function(data) {
					if (data.msg == 'success') {
						layer.msg("餐厅信息修改成功！", {
							icon : 6
						});
						$(".btn-info-cancel").hide();
						$(".btn-info-save-alt").hide();
						$(".btn-info-edit").show();

					} else {
						layer.msg("餐厅创建失败！", {
							icon : 7
						});
					}
				}).error(function() {
					layer.msg("餐厅创建请求失败！", {
						icon : 7
					});
				});
			})
		})
	</script>
</body>
</html>
