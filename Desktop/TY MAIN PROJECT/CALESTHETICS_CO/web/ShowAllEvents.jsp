<%-- 
    Document   : ShowAllEvents
    Created on : Feb 5, 2018, 11:15:50 AM
    Author     : Aniket J
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="cal_java.*" contentType="text/html" pageEncoding="UTF-8"%>

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
<title>Show Event</title>
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
<span class="h3">EVENT DETAILS</span>
</div>

<div class="col-lg-3"></div>

   <%
       ArrayList<Event> list = EventWorker.getAllEvents();
   %>   
   <table border=1 class="table">
   <tr>

           <th>Event Caption</th>
           <th>Date</th>
           <th>Days</th>
           <th>Participated Members</th>
   </tr>   
   <% for(Event event:list)
   {
       int id = event.getId();
   %>
   <tr>
       <td><%=event.getCaption() %></td>

           <th><%=event.getDate()%></th>
           <th><%=event.getDays()%></th>
           <th><%=EventWorker.getEventCount(id)%></th>   </tr>	
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