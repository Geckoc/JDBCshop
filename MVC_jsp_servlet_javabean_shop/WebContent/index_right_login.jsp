<%@ page language="java"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>USER LOGIN</title>
<style>
img
{
opacity:0.5;
fiter:alpha(opacity=50);
}
img:hover{
opacity:1.0;
fiter:alpha(opacity=100);
}


</style>
</head>
<body background="img/as.jpg">
   <form action="YanzhengServlet" method="post" id="login">
   <input type="hidden" name="action" value="user">
  <input type="hidden" name="postName" value="login">
  <table>
        <tr><td align="center"><font color="white">用户名</font></td><td></tr>
        <tr><td align="center"><input type="text" name="user_id"></td></tr>      
        <tr><td align="center"><font color="white"><b>密码</b></font></td></tr>
        <tr><td align="center"><input type="password" name="password"></td></tr>     
        <tr align="center"><td colspan="2">
          <input type="submit" value="登陆">
          <input type="reset" value=" 重置">      
        </td></tr>  
        </table>   
        <br>
        <br>   
       <center><font color="orange">请输入昵称和密码进行登陆，没有账号？请点击注册！</font><br><br>    
         <a href="register.jsp" target="_top"><img alt="github" src="img/github.png" width="100"></a>
          <br><br><br>       
      
     </center>
       
</form>
</body>
</html>