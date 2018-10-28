<%-- 
    Document   : ShowMember
    Created on : Feb 6, 2018, 11:44:46 PM
    Author     : Aniket J
--%>
<%@page import="cal_java.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	String status = (String) session.getAttribute("admin");
	if (status == null) {
		response.sendRedirect("AdminLogin.jsp");
	} else {
%>
<!DOCTYPE html>
<html>
     <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Show Member</title>
<link href="src/css/bootstrap.min.css" rel="stylesheet">
<link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="src/css/Montserrat.css" rel="stylesheet">
<link href="src/mycss/MemberAccount.css" rel="stylesheet">

<script src="src/js/jquery.min.js"></script>

<script language="javascript">
	$(document).ready(function() {

	});
</script>
</head>
    <body  style="background-color: lightblue;font-weight: 600">
           <br>
<div class="well" align="center">
<span class="h2">ADMIN PANEL</span><hr>
<span class="h3">MEMBER DETAILS</span>
</div>
           <div class="col-lg-3"></div>
           
           <%
       ArrayList<Member> list = MemberWorker.getAllMembers();
   %>
   <table border=1 class="table" style="background-color: whitesmoke">
   <tr>

           <th>Name</th>
           <th>Email_Id</th>
           <th>Password</th>
           <th>Contact</th>
           <th>Gender</th>
           <th>Address</th>
   </tr>   
    <% for(Member mem:list)
   {
       int id = mem.getId();
   %>
    <tr>
       <td><%=mem.getName() %></td>

           <th><%=mem.getEmailId()%></th>
           <th><%=mem.getPassword()%></th>
           <th><%=mem.getMobileNo()%></th> 
           <th><%=mem.getGender()%></th> 
           <th><%=mem.getAddress()%></th> 
    </tr>	
           <%
   }
   %>
   </table>
           
     <script src="src/js/jquery.min.js"></script>
     <script src="src/js/bootstrap.min.js"></script>      
    </body>
</html>
<%
	}
%>