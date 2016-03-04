<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Reset PassWord Page.</title>
</head>
<body background="F:\image^data\design\system\line.jpg">
<form action="YanzhengServlet" method="post" id="reset_password">
   <input type="hidden" name="action" value="user">
   <input type="hidden" name="postName" value="reset_password">
          <table align="center">
          <tr><th colspan="2">修改密码</th></tr>
          <tr><td align="right">原始密码:*</td>
          <td><input type="text" name="password"></td>
          </tr>
          <tr><td align="right">新密码:*</td>
          <td><input type="text" name="new_password"></td>
          </tr>
          <tr><td colspan="2" align="center"><input type="submit" value="修改">
               <input type="reset"></td>
          </tr>
          </table>
          </form>
</body>
</html>