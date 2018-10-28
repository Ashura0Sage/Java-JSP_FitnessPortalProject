<%-- 
    Document   : Payment
    Created on : Feb 10, 2018, 1:23:19 AM
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
<%@page import="cal_java.Workout"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <link href="src/css/bootstrap.min.css" rel="stylesheet">
        <link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
        <link href="src/mycss/MemberAccount.css" rel="stylesheet">
        <script src="src/js/jquery.min.js"></script>
        <script language="javascript">  
        $(document).ready(function() {
    $('#registrationForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            firstName: {
                row: '.col-xs-4',
                validators: {
                    notEmpty: {
                        message: 'The first name is required'
                    }
                }
            },
            lastName: {
                row: '.col-xs-4',
                validators: {
                    notEmpty: {
                        message: 'The last name is required'
                    }
                }
            },
            username: {
                validators: {
                    notEmpty: {
                        message: 'The username is required'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: 'The username can only consist of alphabetical, number, dot and underscore'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required'
                    },
                    different: {
                        field: 'username',
                        message: 'The password cannot be the same as username'
                    }
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'The gender is required'
                    }
                }
            },
            agree: {
                validators: {
                    notEmpty: {
                        message: 'You must agree with the terms and conditions'
                    }
                }
            }
        }
    });
});
 
         </script>
         <style>
             .container {
  padding-top: 30px;
  border: 1px solid lightgray;
  border-radius: 5px;
  box-shadow: 0px 1px 4px 0px rgba(0,0,0,0.2);
  margin: 20px;
  vertical-align: middle;
  
}
         </style>    
    </head>
    <body style="background-color: lightgrey">
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
								<%=name%> </a></li>			
					<li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Logout</a></li>
											
			</ul>

		</div>
	</div>
        <br><br><br>
        <%
           
           String prize = request.getParameter("price");
           String Nme = (String) session.getAttribute("Program");
           session.setAttribute("Price",prize); 

           
            
         %>   
        <div class="container">
  <div class="row">
<div class="col-xs-12" id="demoContainer">
                <form id="registrationForm" class="form-horizontal fv-form fv-form-bootstrap" novalidate="novalidate" method="post" action="PaymentAction.jsp">
                  <button type="submit" class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
    <div class="form-group">
        <label class="col-xs-3 control-label">Full name</label>
        <div class="col-xs-4">
            <input type="text" class="form-control" name="firstName" placeholder="First name" />
        </div>
        <div class="col-xs-4">
            <input type="text" class="form-control" name="lastName" placeholder="Last name" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-3 control-label">Email address</label>
        <div class="col-xs-5">
            <input type="text" class="form-control" name="email" />
        </div>
    </div>
                  
       <div class="form-group">
        <label class="col-xs-3 control-label">Price</label>
        <div class="col-xs-5">
            <input type="text" name="price" class="form-control"  value="<%=  prize %>" disabled />
        </div>
    </div>
        
        <div class="form-group">
        <label class="col-xs-3 control-label">Program selected</label>
        <div class="col-xs-5">
            <input type="text" name="program" class="form-control"/>
        </div>
    </div>
        
          
    <div class="form-group">
        <label class="col-xs-3 control-label">Gender</label>
        <div class="col-xs-6">
            <div class="radio">
                <label>
                    <input type="radio" name="gender" value="male" /> Male
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="gender" value="female" /> Female
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="gender" value="other" /> Other
                </label>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-3 control-label">Terms of use</label>
        <div class="col-xs-9">
            <div style="border: 1px solid #e5e5e5; height: 200px; overflow: auto; padding: 10px;">
                <p>The terms and conditions document includes the following provisions:<br>

    A licence of the copyright in the website (and restrictions on what may be done with the material on the website)
       a disclaimer of liability.<br>
    A clause governing the use of passwords and restricted areas of the website
    an acceptable use clause.<br>
    A variation clause.<br>
        an entire agreement clause<br>
    A clause specifying the applicable law and the jurisdiction in which disputes will be decided
    a provision specifying some of the information which needs to be disclosed under the ecommerce Regulations.<br>
    Please read the notes accompanying the terms and conditions very carefully. </p>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-xs-6 col-xs-offset-3">
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="agree" value="agree" /> Agree with the terms and conditions
                </label>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-xs-9 col-xs-offset-3">
            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
        </div>
    </div>
</form>
    </div>
  </div>


	<script src="src/js/jquery.min.js"></script>
	<script src="src/js/bootstrap.min.js"></script>
    </body>
</html>
<%
}
%>