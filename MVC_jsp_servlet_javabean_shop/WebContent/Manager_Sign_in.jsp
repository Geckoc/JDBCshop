<%@ page language="java"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Manager Sign up Page.</title>
<style>
input,img
{
opacity:0.3;
filter:alpha(opacity=30); 
}
input:hover,img:hover
{
opacity:1.0;
filter:alpha(opacity=100);
}
</style>
</head>
<body background="img/pixel_concept.jpg">
<form action="ManagerServlet" method="post" id="manager_login" onsubmit="return validateForm()">
  <input type="hidden" name="action" value="super_user">
  <input type="hidden" name="postName" value="manager_login">
<center>
<h1><font size="25%" face="Georgia" >Manager Sign In</font></h1>
<hr color="black" width="30%">
   <table>
   <caption><b><font face="Georgia" size="5%">Super administrator</font></b></caption>
   <tr><td rowspan="3"><input type="image" value="登陆" src="img/manager.jpg" width="100">
   </td></tr>
   <tr><td align="right"><b>用户:</b></td><td><input type="text" name="manager_id"></td></tr>
   <tr><td align="right"><b>密码:</b></td><td><input type="password" name="manager_pwd"></td></tr>
   <tr  align="center"><td  colspan="3" >
   </td></tr>
   </table>
<a href="Manager_register.jsp"><img alt="Register" src="img/register.png" width="150"></a>
          </center> 
          </form> 
</body>
</html>