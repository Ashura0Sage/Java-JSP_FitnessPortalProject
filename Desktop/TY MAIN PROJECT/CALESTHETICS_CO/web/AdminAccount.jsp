<%-- 
    Document   : AdminAccount
    Created on : Feb 2, 2018, 8:08:54 AM
    Author     : Aniket J
--%>
<%@ page import="cal_java.*" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
	String status = (String) session.getAttribute("admin");
	if (status == null) {
		response.sendRedirect("AdminLogin.jsp");
	} else {
            String id = (String) session.getAttribute("id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Panel</title>
<link href="src/css/bootstrap.min.css" rel="stylesheet">
<link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="src/mycss/MemberAccount.css" rel="stylesheet">

<script src="src/js/jquery.min.js"></script>

<script language="javascript">
        
        var adminId = $("#adminId").val();
	$(document).ready(function() {
		
		$("#eventRegistration").click(function(e) {
			
			window.location.href = "AddEvent.jsp";
		
		});
		
		$("#notify").click(function(e) {
			
			window.location.href = "SendNotifications.jsp";
		
		});
		
		$("#event").click(function(e) {
			
			window.location.href = "ShowAllEvents.jsp";
		
		});
		
		$("#workout").click(function(e) {
			
			window.location.href = "Workouts.jsp";
		
		});
		
		$("#comments").click(function(e) {
			
			window.location.href = "ShowAllComments.jsp";
		
		});
		
		$("#showfeedback").click(function(e) {
			
			window.location.href = "ShowFeedback.jsp";
		
		});
                $("#view_mem").click(function(e) {
			
			window.location.href = "ShowMember.jsp";
		
		});
                $("#mail").click(function(e) {
			
			window.location.href = "Mail.jsp";
		
		});
                $("#logout").click(function(e)	{
			 $.ajax({
         		type : "POST",
         		url : "Logout.jsp",
         		success : function(response) {
         		eval(response);
         		}
			 })
			 
			});
                
                			 $("#search").on('keyup click',function(e) {
    				e.preventDefault();
    				var search = $(this).val();
    				var key = e.which || e.keycode;
    				if(search=="" || key==32)
        			{
        				$("#result").text(" ");
        			}
        			else
        			{
        			$.ajax({
                		type : "POST",
                		url : "SearchResults.jsp",
                		data : "search=" + search,
                		success : function(response) {
                		$("#result").html(response);
                }
            });
        }
        
    });

	});
</script>
</head>

<body style="background-color: lightblue;font-weight: 600">
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
						<li><a href=""></a></li>
						<li class="divider"></li>
						<li class="dropdown-header">Workout Section</li>
						<li><a href="ViewSubscribers.jsp"><span
								class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;VIEW CUSTOMERS
								</a></li>		
						<li id="logout"><a href=""><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;LOGOUT</a></li>
					</ul>
				</li>
			</ul>

		</div>
	</div>
	<br><br><br><br>


	<div class="col-lg-3" style="margin-top: 80px">

		<div class="input-group">
			
			<input type="text" placeholder="Search" class="form-control" id="search">
			<div class="input-group-addon">
				<span class="glyphicon glyphicon-search"></span>
			</div>
		</div>

		<div id="result"></div>


	</div>

<div class="well" align="center">
<span class="h2">ADMIN PANEL</span>
</div>
<div class="well" style="margin-top: 100px">
<div class="row">
<div class="col-lg-3"></div>

	<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel panel-header" align="center">
			
		</div>

		<div class="panel panel-body" align="center">
			<button id="eventRegistration" class="btn btn-primary">EVENT REGISTRATION</button>
		</div>

		<div class="panel panel-footer" align="center" style="margin: 0%;">

		</div>
	</div>
	</div>	
	
	<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel panel-header" align="center">
			
		</div>

		<div class="panel panel-body" align="center">
			<button id="notify" class="btn btn-primary">SEND NOTIFICATION</button>
		</div>

		<div class="panel panel-footer" align="center" style="margin: 0%;">

		</div>
	</div>
	</div>	
	
	<div class="col-lg-3"></div>
	
	</div>
    
        <div class="row">
<div class="col-lg-3"></div>

	<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel panel-header" align="center">
			
		</div>

		<div class="panel panel-body" align="center">
			<button id="view_mem" class="btn btn-primary">MEMBER DETAILS</button>
		</div>

		<div class="panel panel-footer" align="center" style="margin: 0%;">

		</div>
	</div>
	</div>	
	
	<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel panel-header" align="center">
			
		</div>

		<div class="panel panel-body" align="center">
			<button id="mail" class="btn btn-primary">MAIL</button>
		</div>

		<div class="panel panel-footer" align="center" style="margin: 0%;">

		</div>
	</div>
	</div>	
	
	<div class="col-lg-3"></div>
	
	</div>
	
	
	<div class="row">
	<div class="col-lg-3"></div>
	<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel panel-header" align="center">
			
		</div>

		<div class="panel panel-body" align="center">
			<button id="event" class="btn btn-primary">EVENT DETAILS</button>
		</div>

		<div class="panel panel-footer" align="center" style="margin: 0%;">

		</div>
	</div>
	</div>	
	
	<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel panel-header" align="center">
			
		</div>

		<div class="panel panel-body" align="center">
			<button id="workout" class="btn btn-primary">ADD W/O PROGRAMS</button>
		</div>

		<div class="panel panel-footer" align="center" style="margin: 0%;">

		</div>
	</div>
	</div>	
	
	
	<div class="col-lg-3"></div>
	
	</div>
	
	<div class="row">
	<div class="col-lg-3"></div>
	<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel panel-header" align="center">
			
		</div>

		<div class="panel panel-body" align="center">
			<button id="comments" class="btn btn-primary">DELETE COMMENTS</button>
		</div>

		<div class="panel panel-footer" align="center" style="margin: 0%;">

		</div>
	</div>
	</div>	
	
	<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel panel-header" align="center">
			
		</div>

		<div class="panel panel-body" align="center">
			<button id="showfeedback" class="btn btn-primary">VIEW FEEDBACK</button>
		</div>

		<div class="panel panel-footer" align="center" style="margin: 0%;">

		</div>
	</div>
	</div>	
	
	<div class="col-lg-3"></div>
	</div>
	
	
	<div card-success-modal class="modal fade">
		<div class="modal-dialog modal-md">
			<div class="modal-content">

				<div class="modal-header">
					<h3>Your Card has been saved successfully.</h3>
				</div>

				<div class="modal-footer">
					<a class="btn btn-primary "href="AccountUpdate.jsp">Visit Saved Cards</a>
					<button class="btn btn-default" data-dismiss="modal">OK</button>
				</div>
			</div>
		</div>
	</div>
	</div>


	<script src="src/js/jquery.min.js"></script>
	<script src="src/js/bootstrap.min.js"></script>

</body>
</html>
<%
	}
%>