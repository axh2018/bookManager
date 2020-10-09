<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主頁</title>
  </head>
  <body>
<%--  <h2>--%>
<%--    <a href="${pageContext.request.contextPath}/book/manager">点击进入列表页</a>--%>
<%--  </h2>--%>
  <div align="center">
    <form action="${pageContext.request.contextPath}/user/login" method="post">
      賬號：<input name="username">
      密碼：<input type="password" name="passwd">
      登錄：<input type="submit">
    </form>
    ${loginInfo}
  </div>
  </body>
</html>