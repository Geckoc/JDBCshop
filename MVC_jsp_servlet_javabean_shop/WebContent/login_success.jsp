<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Sign_In Success Page</title>
</head>
<body background="img/back.jpg">
<center>
                      <h1>登陆成功!</h1> <br>
        <font color="red" size="5">
        <strong>3秒后自动跳转</strong>     <br> <br> 
                                       如果没有跳转,请按 <a href="login_home.jsp">这里</a>!!!
                               <br> </font>
</center>
  <% response.setHeader("refresh","3;url=login_home.jsp"); %>
</body>
</html>