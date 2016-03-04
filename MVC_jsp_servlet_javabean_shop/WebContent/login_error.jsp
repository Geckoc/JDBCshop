<%@ page language="java" 
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登陆出错页面</title>
</head>
<body>
<center>
三秒后跳回首页<br>
登陆失败，密码错误，或用户名不存在 <br> 
若还没注册，请注册登陆账号<br>
<a href="register.jsp" target="_top">注册</a>
 <% response.setHeader("refresh","3;url=index_right_login.jsp"); %>
</center>
  
</body>
</html>