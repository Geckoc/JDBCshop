<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <form action="YanZhengServlet" method="post">
     <input type="hidden" name="action" value="user">
     <input type="hidden" name="postName" value="shop_cart">
     <table>
     <tr><td><%request.getAttribute("user_id"); %></td></tr>
     
     
     </table>
     
     
     
     
     
     </form>
</body>
</html>