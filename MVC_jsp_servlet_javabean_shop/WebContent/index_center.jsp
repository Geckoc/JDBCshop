<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Scan res_information</title>
<style>
img:
{
opacity:1.0;
fiter:alpha(opacity=100);
}
img:hover
{
opacity:0.4;
fiter:alpha(opacity=40);
}

</style>
</head>
<body background="img/back.jpg">
<h5 align="center"></h5>
<form action="YanZhengServlet" method="post" id="buy_order">
<input type="hidden" name="action" value="user">
  <input type="hidden" name="postName" value="buy_order">
    <table   border="0" cellpadding="3">
    <tr><td align="center">
    <img alt="up_headView" src='"+rs.getString(16).substring(47)+"' height="180" width="180">
    <b>Emperor电脑椅--$1630</b> 
     <input type="button" value="加入购物车" name="addCart">
     <input type="button" value="购买" name="buy"></td>   
     
               <td align="center">
               <img alt="keyboard" src="img/buy/pag.jpg" height="180" width="180">
               <b>WASD Keyboards--$150</b> 
               <input type="button" value="加入购物车" name="addCart">
               <input type="button" value="购买" name="buy"></td>
               
               <td align="center"><img alt="geakWatch" src="img/buy/geak.png" height="180" width="180">
               <b>Geak智能手表--$880</b> 
                <input type="button" value="加入购物车" name="addCart">
               <input type="button" value="购买" name="buy"></td>
               
               <td align="center"><img alt="Lighthand" src="img/buy/hand.jpg" height="180" width="180">
               <b>H9Light照明手套--$52.5</b> 
                <input type="button" value="加入购物车" name="addCart">
               <input type="button" value="购买" name="buy"></td>
               
               <td><img alt="phone" src="img/buy/call.jpg" height="180" width="180">
               <b>Emopulse Smile--$550.5</b>
                <input type="button" value="加入购物车" name="addCart">
               <input type="button" value="购买" name="buy"></td>
    </tr>   
    </table>
    </form>
</body>
</html>