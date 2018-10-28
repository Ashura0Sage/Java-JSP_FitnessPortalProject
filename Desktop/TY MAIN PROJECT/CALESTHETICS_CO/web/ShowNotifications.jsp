<%-- 
    Document   : ShowNotifications
    Created on : Feb 7, 2018, 1:23:46 AM
    Author     : Aniket J
--%>
<%@page import="cal_java.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String name = (String) session.getAttribute("username");
	int ids = 101;
	if (name == null) {
		response.sendRedirect("MemberLogin.jsp");
	} else {
		String id = (String) session.getAttribute("id");
		String entity = (String) session.getAttribute("entity");
		
%>
<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Show Annoucements</title>
<link href="src/css/bootstrap.min.css" rel="stylesheet">
<link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="src/mycss/MemberAccount.css" rel="stylesheet">

<script src="src/js/jquery.min.js"></script>

<script language="javascript">
	$(document).ready(function() {

	});
</script>
</head>
    <body style="background-color: lightblue;font-weight: 600">
        <div class="well" align="center">
<span class="h2">ADMIN ANNOUCEMENTS</span><hr>
<span class="h3">NOTIFICATIONS</span>
</div>
        <div class="col-lg-3"></div>
            <%
       ArrayList<Notification> list = NotificationWorker.getAllNotifications();
   %>
   <table border=1 class="table" style="background-color: whitesmoke">
   <tr>

           <th>SERIAL No</th>
           <th>SUBJECT</th>
           <th>MESSAGE</th>
           <th>TIME</th>
   </tr>   
    <% for(Notification notify:list)
   {
       int Id = notify.getId();
   %>
    <tr>
       <td><%=notify.getId() %></td>

           <td><%=notify.getSub()%></td>
           <td><%=notify.getMsg()%></td>
            <td><%=notify.getTime()%></td>
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
