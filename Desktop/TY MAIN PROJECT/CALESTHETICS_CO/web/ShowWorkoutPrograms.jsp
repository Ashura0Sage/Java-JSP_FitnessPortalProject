<%-- 
    Document   : ShowWorkoutPrograms
    Created on : Feb 9, 2018, 5:06:53 PM
    Author     : Aniket J
--%>
<%
	String name = (String) session.getAttribute("username");
	if (name == null) {
		response.sendRedirect("MemberLogin.jsp");
	} else {
		String id = (String) session.getAttribute("id");
		String entity = (String) session.getAttribute("entity");
%>

<%@page import="cal_java.*"  contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<html>
    <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="src/css/bootstrap.min.css" rel="stylesheet">
<link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="src/mycss/MemberAccount.css" rel="stylesheet">
<title>Show Workouts Programs</title>
<script src="src/js/jquery.min.js"></script>
<script language="javascript">

	$(document).ready(function() {
		
		
		/*$("btn-update-desc").click(function(e){
			e.preventDefault();
			var price = #payment.val();
			$.ajax({
                type : "POST",
                url : "Payment.jsp",
                data : "payment=" + price,
                success : function(response) {
 					eval(response);
                }
            }); 
		});*/

	});
</script>
    </head>
    <body>
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
				<li> <img src="src/mycss/images/AJ1.png" alt="Project CAL Logo" 
                                          title="Project CAL" width="35" height="35"
                                          style="margin-top:7px; "> </li>
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
								
				<li><a href=""><span
								class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;
								<%=name%></a></li>			
					<li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Logout</a></li>
											
			</ul>

		</div>
	</div>
                  <br><br><br>
                  <div class="well" align="center">
	<h3>Hi Admin here,you can buy workout programs here.</h3>
	</div>
	
                 <%
		ArrayList<Workout> list = Workoutworker.getAllWorkouts();
		if(!list.isEmpty())
		{
			for(Workout work:list)
			   {
			       String Name = work.getName();
			       String Price = work.getPrice();
			       String Desc = work.getDesc();
			       String Image = "Images/" + work.getIcon();
			       session.setAttribute("Program",Name);
	%>
        <div class="col-xs-12 col-sm-4 col-lg-6">
           <!-- <div class="col-lg-4">-->
	<div class="panel panel-default" style="background-color:skyblue">
			<div class="panel panel-header" style="padding-left: 6%; padding-left: 4%; margin : 0%;">
				<div class="row">
					<div class="col-xs-3">
						<img src="src/mycss/images/user.jpg"
							class="img-thumbnail img-circle pull-left"
							style="margin-right: 2%; height: 60px; width: 60px;">
						</div>
						<div class="col-xs-6">	
						<div style="margin-top: 10%;"><br>
                                                    <span class="h5" style="font-weight:900">&nbsp;&nbsp;<%=Name%></span>
						</div>
                                               
                                               </div>
                                               
                                                <div class="col-xs-1" style="width:25%;">
                                                    <button btn-price name="price" value="<%=Price%>" id="payment"><i class="fa fa-inr fa-2x"></i><%=Price%></button>
						</div> 
                                        
			</div>


			<div class="panel panel-body" style="padding: 3%; margin : 0%;">
			<div class="row">
						<div style="margin-top: 4%;"><br>
                                                    <span class="h5" style="font-weight:600">&nbsp;&nbsp;<%=Desc%></span>
						</div>		
			</div>
			<br>
			
			<br>
			<div class="row" style="padding: 3%; margin : 0%;">	
				<img src="<%=Image%>" class="img-responsive"
					style="height: 50%; width: 100%;"> </img>
			</div>
			<div class="row">	
			<br>
			<div class="row">	
				<center>
                                    <a href="Payment.jsp?price=<%= Price %>" button btn-update-desc class="btn btn-primary" >Order Now?</button></a>
				</center>
			</div>
			</div>	
                           
			</div>
			
		
			
		</div>		
		</div>
                                    </div>
<%
	}
}
else
{
%>
	<div class="well">
		<h3>No programs to display!!!</h3> <hr>
		<a href="MemberAccount.jsp" class="btn btn-primary">Back to Home</a>
	</div>
<%
}
%>
    	<script src="src/js/jquery.min.js"></script>
	<script src="src/js/bootstrap.min.js"></script>
             
    </body>
</html>
<%
}
%>