<%@ page language="java"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style>
ul
{
list-style-type:none;
margin:0;
padding:0;
overflow:hidden;
}
li
{
float:left;
}
a:link,a:visited
{
display:block;
width:120px;
font-weight:bold;
color:#FFFFFF;
background-color:#bebebe;
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
<body>
<ul>
<li><a href="#res">订单商品</a></li>
<li><a href="#or">订单编号</a></li>
<li><a href="#price">商品价格</a></li>
</ul>

<table width="380" border="2" bgcolor="blue" cellpadding="10">
<tr align="center">
<td><img alt="xxx" src="img/buy/call.jpg" width="100"></td>
<td>Order:158797 </td><td><b>$550.5</b></td></tr>
</table>
        <input type="button" value="删除订单">
</body>
</html>