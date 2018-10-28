<%@ page import="cal_java.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>AddAdminAction</title>
</head>

<body>
<%
   int id=0;
  String emailId = request.getParameter("emailId");
  String username = request.getParameter("username");
  String password = request.getParameter("password");
     
   Admin admin = new Admin();
  admin.setId(id);
  admin.setEmailId(emailId);
  admin.setUsername(username);
  admin.setPassword(password);

 String result = AdminWorker.addAdmin(admin);
 out.println(result);   
 response.sendRedirect("AdminLogin.jsp");
%>
</body>
</html>