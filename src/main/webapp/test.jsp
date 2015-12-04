<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/12/4
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
  <script src="js/jquery.js"></script>
</head>
<body>
<div class="container">
  <div class="line">aaaa
    <script>
      $.ajax({
        url: "index.jsp",
        dataType: "html",
        success:  function(data){
          document.write(data);
        }
      });
    </script>
  </div>
</div>
</body>
</html>
