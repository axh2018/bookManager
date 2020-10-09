<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主頁</title>
</head>
<body>

<div align="center">
    <form action="${pageContext.request.contextPath}/user/register" method="post">
        賬號：<input name="username">
        密碼：<input type="password" name="passwd">
        注冊：<input type="submit">
    </form>
    ${loginInfo}
</div>
</body>
</html>