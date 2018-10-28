<%@ page import="cal_java.*" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
	String status = (String) session.getAttribute("admin");
	if (status == null) {
		response.sendRedirect("AdminLogin.jsp");
	} else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Send Notifications</title>
<link href="src/css/bootstrap.min.css" rel="stylesheet">
<link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="src/mycss/MemberAccount.css" rel="stylesheet">

<script src="src/js/jquery.min.js"></script>

<script language="javascript">
	$(document).ready(function() {
	       $("#submit").click(function(e){
	
	        var subject = $("#subject").val();
	        var Message = $("#message").val();
	        
	      
	       
	        	$.ajax({		
	                type : "POST",
	                url : "AddNotificationAction.jsp",
	                data : "subject=" + subject + "&message=" + Message,
	                success : function(response) {
	 					eval(response);
	                }
	            });  	
	        
	       
	        
	   	});
	    
    
    
	    

	});
</script>
</head>

<body>
<br>
<div class="well" align="center">
<span class="h3">ADMIN PANEL</span><br>
<span class="h4">Send Notifications</span>
</div>
	
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div id="eventNotify" class="panel panel-default">
			<br>
			

			<div class="panel panel-body">
			
				<input type="text" placeholder="Subject" id="subject" class="form-control">
				
				<hr>
				
				<textarea placeholder="Message" id="message" class="form-control"></textarea>
				
			</div>
			
			<div class="panel panel-footer" align="center">
			
				<button class="btn btn-primary" id="submit" >Send Notifications</button>
				
			</div>
			

		</div>
	</div>
	<div class="col-sm-2"></div>
	
	
	
	<div added-success class="modal fade">
		<div class="modal-dialog modal-md">
			<div class="modal-content">

				<div class="modal-header">
					<h3>Notification has been registered successfully.</h3>
				</div>

				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">OK</button>
				</div>
			</div>
		</div>
	</div>
	
	<div added-unsuccess class="modal fade">
		<div class="modal-dialog modal-md">
			<div class="modal-content">

				<div class="modal-header">
					<h3>Notification could not be registered.</h3>
				</div>

				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">OK</button>
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