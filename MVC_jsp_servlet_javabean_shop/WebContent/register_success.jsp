<%@ page language="java" import="java.util.*"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>��½�ɹ�ҳ��</title>
</head>
<body background="img\sign1.jpg">
<center>
      ��ϲ�û�:<%=request.getParameter("user_id") %>&nbsp;&nbsp; 
                      <h1>ע��ɹ�!</h1> <br>
        <font color="red" size="5"> <br>
                                                            �������ת����ҳ�� <br> <br> 
                                       ���û����ת,�밴 <a href="index.jsp">����</a>!!!
                               <br> </font>
</center>
   <% response.setHeader("refresh","5;url=index.jsp"); %>  
</body>
</html>