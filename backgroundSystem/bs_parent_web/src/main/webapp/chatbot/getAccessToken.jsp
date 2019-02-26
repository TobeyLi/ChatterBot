<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.edu.hust.utils.AccessTokenThread" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
access_token为：<%=AccessTokenThread.accessTokenUtil.getAccessToken()%>
</body>
</html>
