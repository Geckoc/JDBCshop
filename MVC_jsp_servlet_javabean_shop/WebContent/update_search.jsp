<%@ page language="java"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>修改前请验证用户名和密码,防止恶意篡改他人信息!</h1>
<form action="YanzhengServlet" method="post" id="update_search">
<input type="hidden" name="action" value="user">
<input type="hidden" name="postName" value="update_search">
     用户名:<input type="text" name="user_id">
     密码:<input type="password" name="password">
     <input type="submit" value="提交">
<%String user_id=request.getParameter("user_id");
  String password=request.getParameter("password");
  session.setAttribute("user_id", user_id);
  session.setAttribute("password", password);
%>
     </form>
</body>
</html>