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
</head>
<body>
	<div class="container">
		<div onclick="openchat()">在线聊天</div>
		<script type="text/javascript">
			function openchat() {
				$.ajax({
					url : "/o/to_do_list2/tochat",
					type : "GET"
				}).done(function(data) {
					layer.open({
						type : 1,
						skin : "layui-layer-rim",
						area : [ "725px", "630px" ],
						closeBtn : 0,
						title : false,
						shade : 0,
						move : "#title",
						scrollbar : false,
						moveType : 1,
						content : data,
						success : function() {

						}
					});
				});
			}
		</script>
		<div class="line">${msg}
			<!-- <script>
            $.ajax({
                url: "index.jsp",
                dataType: "html",
                success: function (data) {
                    document.write(data);
                }
            });
         </script> -->
		</div>
	</div>
</body>
</html>
