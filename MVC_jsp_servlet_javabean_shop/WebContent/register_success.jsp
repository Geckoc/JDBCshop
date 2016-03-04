<%@ page language="java" import="java.util.*"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>登陆成功页面</title>
</head>
<body background="img\sign1.jpg">
<center>
      恭喜用户:<%=request.getParameter("user_id") %>&nbsp;&nbsp; 
                      <h1>注册成功!</h1> <br>
        <font color="red" size="5"> <br>
                                                            五秒后将跳转到主页面 <br> <br> 
                                       如果没有跳转,请按 <a href="index.jsp">这里</a>!!!
                               <br> </font>
</center>
   <% response.setHeader("refresh","5;url=index.jsp"); %>  
</body>
</html>