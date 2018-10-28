
<%@page import="cal_java.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String status = (String) session.getAttribute("admin");
	if (status == null) {
		response.sendRedirect("AdminLogin.jsp");
	} else {
            String id = (String) session.getAttribute("id");
%>

<html>
      <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Show Feedback</title>
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
<span class="h2">ADMIN PANEL</span><hr>
<span class="h3">FEEDBACKS</span>
</div>
        <div class="col-lg-3"></div>
            <%
       ArrayList<Feedback> list = FeedbackWorker.getAllFeedback();
   %>
   <table border=1 class="table" style="background-color: whitesmoke">
        <tr>

           <th>SERIAL No</th>
           <th>NAME </th>
           <th>EMAIL</th>
           <th>MESSAGE</th>
   </tr>   
     <% for(Feedback feed:list)
   {
       int Id = feed.getId();
   %>
   <tr>
           <td><%=feed.getId() %></td>
           <th><%=feed.getname()%></th>
           <th><%=feed.getemail()%></th>
           <th><%=feed.getMsg()%></th>
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
       
       
       
       
       
      