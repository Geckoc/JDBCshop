<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登陆失败</title>
</head>
<body>
<center>
<b>Sorry!用户名或密码错误<br>
 请重新登陆,三秒后回到登陆页面。<br>
 没有跳转请点击:<a href="Manager_Sign_in.jsp">跳转</a>
</b>
<%response.setHeader("refresh", "3;url=Manager_Sign_in.jsp"); %>
</center>
</body>
</html>