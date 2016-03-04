<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="YanzhengServlet" method="post" id="update_myself">
<input type="hidden" name="action" value="user">
<input type="hidden" name="postName" value="update_myself">       
 <table align="center">
        <tr><td align="right">用户名:</td>
        <td><input type="text" name="user_id" value=<%=request.getParameter("user_id") %>></td></tr>
        <tr><td align="right">密码:</td>
        <td><input type="text" name="password" value=<%=request.getParameter("password") %>></td></tr>
        <tr><td align="right">性别:</td>
        <td><input type="radio" name="user_sex" value="男">男
            <input type="radio" name="user_sex" value="女">女
        </td>
        </tr>  
        
        <tr><td align="right">电话:</td>
        <td><input type="text" name="call" value=""></td></tr>
        <tr><td align="right">邮箱:</td><td><input type="text" name="mail"></td></tr>
        <tr><td valign="top">收货地址:</td><td><textarea rows="3" cols="28" name="location"></textarea></td></tr>
        <tr><td align="center" colspan="2">
        <input type="submit" name="update" value="提交">
        <input type="reset" name="clean" value="清空"> 
        </td></tr>
        </table>
        </form>
</body>
</html>