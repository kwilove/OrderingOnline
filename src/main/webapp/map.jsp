<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/12/4
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title></title>
<script src="js/jquery.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=YfNpTOukxt6excpGyG6110aX"></script>
<!-- <script type="text/javascript" src="js/baidu_map_api.js.js"></script> -->
<script type="text/javascript" src="js/map.js"></script>
<style type="text/css">
#allmap {
	width: 100%;
	height: 80%;
	overflow: hidden;
	margin: 0;
}
#l-map {
	height: 100%;
	width: 78%;
	float: left;
	border-right: 2px solid #bcbcbc;
}
#r-result {
	height: 100%;
	width: 20%;
	float: left;
}
</style>
</head>
<body>
	<div class="container">
		<div>
			<div style="margin: 10px; height: 45px;">
				<input id="ZUOBIAO_X" type="text" class="input" placeholder="纬度" />
				<input id="ZUOBIAO_Y" type="text" class="input" placeholder="经度" />
				<input type="button" value="定位" onclick="choose();" class="button" />
				<input type="text" id="suggestId" placeholder="这里输入搜索地址"
					class="input" />
				<div id="searchResultPanel" style="width: 300px; height: auto;"></div>
			</div>
		</div>
		<div id="allmap"></div>
	</div>
</body>
</html>
