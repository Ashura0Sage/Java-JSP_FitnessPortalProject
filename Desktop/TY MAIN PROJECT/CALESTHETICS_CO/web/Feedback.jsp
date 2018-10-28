
<%@page import="cal_java.*"  contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="src/css/bootstrap.min.css" rel="stylesheet">
         <link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
        <title>Feedback Page</title>
        <script src="src/js/jquery.min.js"></script>
        <script language="javascript">
          $(document).ready(function() {
	       $("#submit").click(function(e){
                var name = $("#name").val();
	        var email = $("#emailId").val();
	        var message = $("#message").val();
	        var spam = $("#spam").val();
	      
	       
	        	$.ajax({		
	                type : "POST",
	                url : "Feedbackaction.jsp",
	                data :  "name="+name+ "&emailId="+ email + "&message=" + message+"&spam="+spam,
	                success : function(response) {
	 					eval(response);
	                }
	            });  	
	        
	       
	        
	   	});
	    
    
    
	    

	});
            
            
         </script>
    </head>
 <body style="background-color: lightgrey;font-weight: 600">
        <div class="container">
<div class="row">
  <div class="col-md-12">
     <div class="navbar navbar-fixed-top navbar-inverse" id="navbarTop">
		<div class="navbar-header">
			<div class="navbar-brand">ABSOLUTE FIT</div>
			<button ="button" class="navbar-toggle btn-md" data-toggle="collapse"
				data-target="#navbarAccount">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbarAccount">

			<ul class="nav navbar-nav navbar-left">
				<li> <img src="src/mycss/images/AJ1.png" alt="Project CAL Logo" title="Project CAL" width="35" height="35" style="margin-top:7px; "> </li> 
				<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="MemberAccount.jsp"><span
						class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;Home</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				
				<li><a href="AccountUpdate.jsp"><span
								class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;
								Account</a></li>
				<li><a href="PostUpdate.jsp"><span
								class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;
								Post</a></li>	
								
						
					<li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Logout</a></li>
											
			</ul>

		</div>
	</div>
	<br><br><br><br>

	
  </div>
 
    <div class="col-lg-6">
      <div class="well well-sm"><strong><i class="glyphicon glyphicon-ok form-control-feedback"></i> Required Field</strong></div>
      <div class="form-group">
        <label for="InputName">Your Name</label>
        <div class="input-group">
          <input type="text" class="form-control"  id="name" placeholder="Enter Name" required>
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <div class="form-group">
        <label for="InputEmail">Your Email</label>
        <div class="input-group">
          <input type="email" class="form-control" id="emailId"  placeholder="Enter Email" required  >
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <div class="form-group">
        <label for="InputMessage">Message</label>
        <div class="input-group"
>
          <textarea  id="message" class="form-control" rows="5" required></textarea>
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <div>
        <label for="InputReal">What is 4+3? (Simple Spam Checker)</label>
        <div  class="input-group">
          <input type="text" class="form-control" id="spam" name="InputReal"  required>
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <br>
      <input id="submit" type="submit" name="submit"  value="Submit" class="btn btn-info pull-right">
    </div>
  
  <hr class="featurette-divider hidden-lg">
  <div class="col-lg-5 col-md-push-1">
    <address>
    <h3>Office Location</h3>
    <p class="lead"><a><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1585.0039650459953!2d72.9352818081219!3d19.11660399413666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c7bc7c814b5d%3A0x6ad25b348f9b9dc6!2sVikhroli+East%2C+Mumbai%2C+Maharashtra!5e0!3m2!1sen!2sin!4v1515483757936" frameborder="0" height="80%" width="90%" style="border:0" allowfullscreen></iframe><br>The Pentagon,<br>
Vikhroli, MUMBAI 400083</a><br>
      Phone: 022 254684<br>
      Fax: 22468761<br>
      Email:aniketj427@gmail.com
    </p>
    
    </address>
  </div>
</div>
    <div class="col-xs-0"></div>
</div>
     
    <div added-success class="modal fade">
		<div class="modal-dialog modal-md">
			<div class="modal-content">

				<div class="modal-header">
					<h3>Feedback has been registered successfully.</h3>
				</div>

				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">OK</button>
				</div>
			</div>
		</div>
	</div>
     <div feedback-spam-modal class="modal fade">
		<div class="modal-dialog modal-md">
			<div class="modal-content">

				<div class="modal-header">
					<h3>Spammer detected..retry?</h3>
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
					<h3>Feedback could not be registered.</h3>
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
