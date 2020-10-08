<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主頁</title>
    <style type="text/css">
      a {
        text-decoration: none;
        color: black;
        font-size: 18px;
      }
      h2 {
        width: 180px;
        height: 48px;
        margin: 300px auto;
        text-align: center;
        line-height: 38px;
        background: deepskyblue;
        border-radius: 10px;
      }
    </style>
  </head>
  <body>
  <h2>
    <a href="${pageContext.request.contextPath}/book/manager">点击进入列表页</a>
  </h2>
  </body>
</html>
