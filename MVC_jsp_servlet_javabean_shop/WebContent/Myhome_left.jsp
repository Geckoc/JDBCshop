<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>应用栏</title>
<style>
ul
{
list-style-type:none;
margin:0;
padding:0;
}
a:link,a:visited
{
display:block;
font-weight:bold;
color:#FFFFFF;
background-color:gray;
width:120px;
text-align:center;
padding:4px;
text-decoration:none;
text-transform:uppercase;
}
a:hover,a:active
{
background-color:#cc0000;
}
</style>
</head>
<body bgcolor="gray">
<p align="left">
<ul>
<li><a href="myorder.jsp" target="right">我的订单</a></li>
<li><a href="ShopCart.jsp" target="right">我的购物车</a></li>
<li><a href="update_search.jsp" target="right">修改个人资料&&密码</a></li>
<li><a href="index.jsp"  target="_top">退出\注销</a></li>
</ul>
 
      
      
</body>
</html>