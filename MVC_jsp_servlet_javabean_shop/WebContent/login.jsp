<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Sign_in</title>
</head>
<body background="img\test.jpg">
   <form action="YanzhengServlet" method="post" id="login">
   <input type="hidden" name="action" value="user">
  <input type="hidden" name="postName" value="login_in">
  <hr color="black" width="50%">
<center><h3><font color="white" size="15%" face="Georgia">Sign in</font></h3></center><br><br>
  <table border="0" align="center"  >
        <tr><td><font size="5%" color="white">用户：</font></td><td><input type="text" name="user_id"></td></tr>      
        <tr><td><font size="5%" color="white">密码：</font></td><td><input type="password" name="password"></td></tr>     
        <tr align="center"><td colspan="2">
          <input type="submit" value="提交">
          <input type="reset" value=" 重置">      
        </td></tr>  
        </table>  
       <center> <p><font size="5" color="orange">请输入昵称和密码进行登陆，没有账号？请点击注册！</font></p></center>
       <center>
         <a href="register.jsp" target="_top">注册</a>
       </center>

</form>
</body>
</html>