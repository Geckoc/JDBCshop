<%@ page contentType="text/html;" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户注册</title>
<style type="text/css">@import url(register_style.css);</style>
<script type="text/javascript" src="register_jsc.js"></script>
</head>
<body background="img\sign1.jpg">
  
  <form action="YanzhengServlet?method=register" method="post" id="register">
 <input type="hidden" name="action" value="user">
  <input type="hidden" name="postName" value="register">
  <table  border="0" align="center" width="630">
  <tr><td colspan="3" align="center" height="40" id="title"><b>注册信息填写</b></td></tr>
        <tr><td align="right" id="t">用户名:*</td><td><input type="text" name="user_id"></td>
        <td id="i">用户名由字母开头、后跟字母数字或下划线！</td></tr>
        <tr><td align="right" id="t">密码:*</td><td><input type="text" name="password"></td>
        <td id="i">设置登陆密码，至少六位！</td>
        </tr>
        <tr><td align="right" id="t">确认密码:*</td><td><input type="text" name="repassword"></td>
        <td id="i">请再次输入密码！</td>
        </tr> 
        <tr><td align="right" id="t">性别:*</td>
        <td><input type="radio" name="user_sex" value="男">男
                  <input type="radio" name="user_sex" value="女">女 </td>
                  <td id="i">请选择您的性别！</td>
                  </tr>       
        <tr><td align="right" id="t">手机号码:*</td><td><input type="text" name="call"></td>
        <td id="i">请输入您的11位手机号码！</td>
        </tr> 
        <tr><td align="right" id="t">E-mail:*</td><td><input type="text" name="mail"></td>
        <td id="i">请正确填写您的常用邮箱地址,可用此邮箱找回密码！</td>
        </tr>
        <tr><td align="right" valign="top" id="t">收货地址:*</td>
         <td colspan="2"><textarea rows="5" cols="50" name="location"></textarea></td>
        </tr> 
        <tr><td colspan="3" align="center" height="40">
        <input type="checkbox" name="accept" value="yes">
                                  <font color="red">我已仔细阅读并接受用户使用协议</font> </td>          
        </tr>                         
        <tr><td align="center" colspan="3" height="40">
          <input type="button" value="注册" onClick="validate()">  
          <input type="reset" value=" 重置">      
        </td></tr>  
        </table>
       </form>
</body>
</html>