<%-- 
    Document   : Workouts
    Created on : Feb 9, 2018, 1:54:20 AM
    Author     : Aniket J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AddWorkout Page</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="src/css/bootstrap.min.css" rel="stylesheet">
        <script src="src/js/jquery.min.js"></script>
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
						<li><a href="">View Profile</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">Account Settings</li>
						<li><a href="PostUpdate.jsp"><span
								class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;VIEW SUBSCRIBERS
								</a></li>		
						<li id="logout"><a href=""><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;LOGOUT</a></li>
					</ul>
				</li>
			</ul>

		</div>
	</div>
       <br>
	<br>
	<div class="well" align="center">
<span class="h3">ADMIN PANEL</span><br>
<span class="h4">ADD WORKOUT PROGRAMS </span>
</div>
	
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div id="regPanel" class="panel panel-default">
			<br>
			
                        <form method="post" action="WorkoutAction.jsp" enctype="multipart/form-data">
			<div class="panel panel-body">

				

					<div class="input-group" id="Icon">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<input type="file" accept="image/*" name="photo" required size="10px"
								style="display: inline-block width:200px;">
                                                <input type="hidden" name="userId">
                                                <br>
                                                <div class="col-xs-2 col-sm-4">
						<button type="reset" class="btn btn-default">Reset</button>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<button id="postSubmit" type="submit" class="btn btn-primary">Post</button>
						</div>
					</div>
					<br>
					
					
					<div class="input-group" id="Name">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
                                            <input type="text" class="form-control" name="name" id="Name" placeholder="Name of Workout" required>
					</div>
					<br>

					<div class="input-group" id="description">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-envelope"></span>
						</div>
                                            <textarea type="text" class="form-control" name="desc" rows="6" id="description" placeholder="Description" required></textarea>
					</div>
					<br>

					
					<div class="input-group" id="price">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-eye-open"></span>
						</div>
                                            <input type="text" class="form-control" name="price" id="price" placeholder="price" required>
					</div>
					<br>	
					
					<br>
					
					<div>
						<button id="submit" class="btn btn-primary">Submit</button>
					</div>
				

				
			</div>
                        </form>

		</div>
	</div>
        <div class="col-sm-2"></div>
        <div workout-success class="modal fade">
		<div class="modal-dialog modal-md">
			<div class="modal-content">

				<div class="modal-header">
					<h3>Workouts uploaded successfully.</h3>
				</div>

				<div class="modal-footer">
					<a href="AdminAccount.jsp" class="btn btn-default">OK</a>
				</div>
			</div>
		</div>
	</div>
	
	<div workout-unsuccess class="modal fade">
		<div class="modal-dialog modal-md">
			<div class="modal-content">

				<div class="modal-header">
					<h3>W/O Program could not be uploaded</h3>
					<h4>Please try again later</h4>
				</div>

				<div class="modal-footer">
					<a href="Workouts.jsp" class="btn btn-default">OK</a>
				</div>
			</div>
		</div>
	</div>

	
        
        
        
       
       
       
	<script src="src/js/jquery.min.js"></script>
	<script src="src/js/bootstrap.min.js"></script>

    </body>
</html>
