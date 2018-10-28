<%@page import="java.util.ArrayList"%>
<%@ page import="cal_java.*" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
	String status = (String) session.getAttribute("admin");
	if (status == null) {
		response.sendRedirect("AdminLogin.jsp");
	} else {
            String id = (String) session.getAttribute("id");
%>
<html>
    <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Send Mail</title>
<link href="src/css/bootstrap.min.css" rel="stylesheet">
<link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="src/mycss/MemberAccount.css" rel="stylesheet">
<script src="src/js/jquery.min.js"></script>
    </head>
    <body>
        <br>
<div class="navbar navbar-fixed-top navbar-inverse" id="navbarTop">
		<div class="navbar-header">
			<div class="navbar-brand"> ABSOLUTE FIT</div>
			<button ="button" class="navbar-toggle btn-md" data-toggle="collapse"
				data-target="#navbarAccount">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbarAccount">

			<ul class="nav navbar-nav navbar-left">
				<li><img src="src/mycss/images/AJ1.png" alt="Project CAL Logo" title="Project CAL" width="35" height="35" style="margin-top:7px; "></li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="AdminAccount.jsp"><span
						class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;Home</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
			
				<li class="dropdown"><a class="dropdown-toggle" type="button"
					data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>&nbsp; ADMIN
						<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="">View Customers</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">Workout Section</li>
						<li><a href="ViewSubscribers.jsp"><span
								class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;VIEW SUBSCRIBERS
								</a></li>		
						<li id="logout"><a href=""><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;LOGOUT</a></li>
					</ul>
				</li>
			</ul>

		</div>
	</div>
        <br><br><br>
       <div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    ADMIN PANEL : <small>Email Users</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form method="post" action="MailSender.jsp">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
              <legend><span class="glyphicon glyphicon-globe"></span> CLIENT DETAILS</legend>
             <%
       ArrayList<Member> list = MemberWorker.getAllMembers();
   %>
   <table border=1 class="table" style="background-color: whitesmoke">
   <tr>

           <th>Name</th>
           <th>Email_Id</th>
           <th>Contact</th>
          
   </tr>   
    <% for(Member mem:list)
   {
       int Id = mem.getId();
   %>
    <tr>
       <td><%=mem.getName() %></td>

           <th><%=mem.getEmailId()%></th>
           <th><%=mem.getMobileNo()%></th> 
          
    </tr>	
           <%
   }
   %>
   </table>
        </div>
    </div>
</div>

    </body>
</html>
<%
	}
%>