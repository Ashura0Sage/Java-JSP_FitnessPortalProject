<%-- 
    Document   : ViewSubscribers
    Created on : Feb 10, 2018, 11:28:56 AM
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
<title>Show Subscribers</title>
<link href="src/css/bootstrap.min.css" rel="stylesheet">
<link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
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
<span class="h3">WORKOUT SUBSCRIBERS DETAILS</span>
</div>
     <div class="col-lg-3"></div>

   <%
       ArrayList<Payment> list = PaymentWorker.getAllPayment();
   %>   
   <table border=1 class="table">
   <tr>

           <th>First Name</th>
           <th>Last Name</th>
           <th>EmailId</th>
           <th>Price</th>
            <th>Program Bought</th>
             <th>Gender</th>
   </tr>  
   <% for(Payment pay:list)
   {
       int id = pay.getId();
   %>
   <tr>
       <td><%=pay.getfname() %></td>

           <th><%=pay.getlname()%></th>
           <th><%=pay.getemail()%></th>
           <th><%=pay.getprice()%></th>
           <th><%=pay.getProgram()%></th>
            <th><%=pay.getgender()%></th>
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