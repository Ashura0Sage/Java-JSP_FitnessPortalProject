<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="src/css/bootstrap.min.css" rel="stylesheet">
    <link href="src/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="src/mycss/Home.css" rel="stylesheet">
  </head>
<body style="background-color:lightgrey;font-weight: 600">

    <div class="navbar navbar-inverse navbar-top" id="navbarTop">
      <div class="container-fluid">

        <div class="navbar-header">
          <div class="navbar-brand">
             <p style="font-weight: 700"> ABSOLUTE FIT </p>
              <!-- <span class="h4" style="color:#1A5276">Project</span>
              <span class="h4" style="color:#C0392B ">MAD</span> -->
          </div>
          <button="button" class="navbar-toggle btn-md" data-toggle="collapse" data-target="#navbarHome">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
           <span class="icon-bar"></span> 
          </button>    
        </div>

        <div class="collapse navbar-collapse" id="navbarHome">
          <ul class="nav navbar-nav">
            <li> <img src="src/mycss/images/AJ1.png" alt="Project CAL Logo" title="Project CAL" width="35" height="35" style="margin-top:7px; "> </li> 
            <li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <li class="active"><a href="Home.jsp" ><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;HOME</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            
                        <li style="font-weight: 500"><a href="aboutus.jsp">&nbsp;&nbsp;WORKOUTS</a></li>
			<li style="font-weight: 500"><a href="Registration.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;SIGN UP</a></li>
				<li class="dropdown"><a class="dropdown-toggle" type="button"data-toggle="dropdown"> <span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;SIGN IN&nbsp;
					<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li style="font-weight: 400"><a href="MemberLogin.jsp">MEMBER LOGIN</a></li>
						
								
					</ul>
				</li>
			</ul>
            
        </div>

      </div>
    </div>


    <div class="panel panel-default" id="panelRed"></div>

    <div class="panel panel-default" style="background-color:buttonface">
    <div class="panel panel-body" style="background-color:lightgrey">
    <div class="row">
      <div class="col-lg-9">
        <div class="carousel slide" data-ride="carousel" id="carouselMAD">
          <ol class="carousel-indicators">
            <li data-target="#carouselMAD" data-slide-to="0" class="active"></li>
            <li data-target="#carouselMAD" data-slide-to="1"></li>
            <li data-target="#carouselMAD" data-slide-to="2"></li>
            <li data-target="#carouselMAD" data-slide-to="3"></li>
            <li data-target="#carouselMAD" data-slide-to="4"></li>
            <li data-target="#carouselMAD" data-slide-to="5"></li>
            <li data-target="#carouselMAD" data-slide-to="6"></li>
          </ol>
          <div class="carousel-inner" id="carouselMAD">
            <div class="item active">
              <img src="src/mycss/images/hm img0.jpg">
            </div>
            <div class="item">
              <img src="src/mycss/images/hm img1.jpg" class="img-responsive">
            </div>
            <div class="item">
              <img src="src/mycss/images/hm img12.jpg" class="img-responsive">
            </div>
            <div class="item">
              <img src="src/mycss/images//hm img2.jpg" class="img-responsive">
            </div>
            <div class="item">
              <img src="src/mycss/images//hm img3.jpg" class="img-responsive">
            </div>
            <div class="item">
              <img src="src/mycss/images//hm img5.jpg" class="img-responsive">
            </div>
            <div class="item">
              <img src="src/mycss/images/hm img6.jpg" class="img-responsive">
            </div>
            <a class="left carousel-control" href="#carouselMAD" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carouselMAD" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
          </div>
        </div> 
      </div> 

      <div cass="col-lg-3">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="src/mycss/images/CalAesthetics_Logo.png" class="img-responsive">
            <br>
          </div>
          <div class="panel-footer">
          <div class="row">
            <div class="col-lg-5">
              <a href="MemberLogin.jsp"><button class="btn btn-primary btn-md pull-left">
              <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;Sign in</button></a>
            </div>
            <div class="col-lg-2"></div>
            <div class="col-lg-5">
              <a href="Home.jsp"><button class="btn btn-primary btn-md pull-right">
              <span class="glyphicon glyphicon-earphone"></span>&nbsp;&nbsp;&nbsp;Contact us</button></a>
            </div>
          </div> 
          </div>
        </div>     

        <br>
        <div class="panel panel-default" id="panelJoin">
          <div class="panel-body">
            <span class="h3" style="font-family: 'Montserrat', sans-serif;">How can I contribute?</span><br><br>
            You can get bodyweight training programs in the workout section thus just by maintaining your Fitness and supporting Calesthetics.
            <br>
            <br>
            <div class="panel-footer text-center">
            <a href="about.jsp">
            <button class="btn btn-primary btn-md">
            <span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;More INFO</button></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    </div>
  
    <div class="panel panel-default" id="panelRed"></div>

    <div class="container">

    <div class="container content-section text-center">
      <div class="row">
        <div class="col-lg-1"></div>
          <div class="col-lg-10">
              <h2 id="about">ABOUT PROJECT CALESTHETICS</h2> <br>
              <p><h4>HEY!,I'm Aniket Jagtap <br>dedicated to get people in Shape and <br> Improving their Lifestyle just by doing BODYWEIGHT EXERCISES  and  <BR>finding incredible RESULTS</h4>
              </p>
            <br>
          </div>
        <div class="col-lg-1"></div>
      </div>
    </div>

    <div class="container content-section text-center">
          <button class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;&nbsp;Know more</button>
    </div>

    </div>

    <br>
    <br>

    <div class="panel panel-default" id="panelRed"></div>
      
    <div class="container">
      <h2 id="about" class="text-center">NUTRITIVE FOODS</h2>
      <h5 id="about" class="text-center">(Click on the image to enlarge)</h5> 
      <br>
      <br>
        <div class="row">

          <div class="col-xs-12 col-sm-6 col-lg-3">
            <div class="thumbnail">
              <a href="" data-toggle="modal" data-target="#Veggie">
                <img src="src/mycss/images/nutritive1.jpg" class="img-responsive" 
                alt="Vegetables" title="Veggies">
                <div class="caption text-center">
                  <p>VEGGIES</p>
                </div>
              </a>
            </div>
          </div>

          <div class="modal fade" id="Veggie">
            <div class="modal-dialog modal-md">
              <div class="modal-content">
                <div class="modal-header">
                  <h3 class="text-center">VEGGIES (high in vitamans)</h3>
                </div>
                <div class="modal-body">
                  <img src="src/mycss/images/nutritive1.jpg" class="img-responsive" 
                  alt="vegetables" title="Veggie">
                  <br>
                </div>
                <div class="modal-footer">
                <a href="" class="btn btn-default" data-dismiss="modal">Close</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-6 col-lg-3" >
            <div class="thumbnail">
              <a href="" data-toggle="modal" data-target="#berry">
                <img src="src/mycss/images/nutritive2.jpg" class="img-responsive" 
                alt="berry" title="berry">
                <div class="caption text-center">
                  <p>BERRY's</p>
                </div>
              </a>
            </div>
          </div>

          <div class="modal fade" id="berry">
            <div class="modal-dialog modal-md">
              <div class="modal-content">
                <div class="modal-header">
                  <h3 class="text-center">BERRY's (low calorie food)</h3>
                </div>
                <div class="modal-body">
                  <img src="src/mycss/images/nutritive2.jpg" class="img-responsive" 
                  alt="berry" title="berry">
                  <br>
                </div>
                <div class="modal-footer">
                <a href="" class="btn btn-default" data-dismiss="modal">Close</a>
                </div>
              </div>
            </div>
          </div>


          <div class="col-xs-12 col-sm-6 col-lg-3" >
            <div class="thumbnail">
              <a href="" data-toggle="modal" data-target="#protein">
                <img src="src/mycss/images/nutritive3.jpg" class="img-responsive" 
                alt="protein source food" title="protein">
                <div class="caption text-center">
                  <p>PROTEINS</p>
                </div>
              </a>
            </div>
          </div>

          <div class="modal fade" id="protein">
            <div class="modal-dialog modal-md">
              <div class="modal-content">
                <div class="modal-header">
                  <h3 class="text-center">PROTEIN(good for buiding muscles)</h3>
                </div>
                <div class="modal-body">
                  <img src="src/mycss/images/nutritive3.jpg" class="img-responsive" 
                  alt="protein source food" title="protein">
                  <br>
                </div>
                <div class="modal-footer">
                <a href="" class="btn btn-default" data-dismiss="modal">Close</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-6 col-lg-3" >
            <div class="thumbnail">
              <a href="" data-toggle="modal" data-target="#carbs">
                <img src="src/mycss/images/nutritive4.jpg" class="img-responsive" 
                alt="carbs" title="carbohydrates">
                <div class="caption text-center">
                  <p>CARBOHYDRATES</p>
                </div>
              </a>
            </div>
          </div>

          <div class="modal fade" id="carbs">
            <div class="modal-dialog modal-md">
              <div class="modal-content">
                <div class="modal-header">
                  <h3 class="text-center">CARBOHYDRATES (ESSETIAL OF GAINING MASS)</h3>
                </div>
                <div class="modal-body">
                  <img src="src/mycss/images/nutritive4.jpg" class="img-responsive" 
                  alt="carbs " title="carbohydrates">
                  <br>
                </div>
                <div class="modal-footer">
                <a href="" class="btn btn-default" data-dismiss="modal">Close</a>
                </div>
              </div>
            </div>
          </div>
        </div>  
      <br>
      <div class="container content-section text-center">
        <button class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;&nbsp;View more</button>
      </div>

    </div>

      <br>
      <br>
      <div class="panel panel-default" id="panelRed">
      </div>
      
      <div class="container">
        <div class="container content-section text-center">
          <h2 id="about" class="text-center">CONTACT </h2>
          <br>
          <div>  
            <h4><i class="fa fa-whatsapp"></i>&nbsp;&nbsp;+91-9167738212</h4>
            <h4><i class="fa fa-whatsapp"></i>&nbsp;&nbsp;+91-9769894016</h4>
            <h4><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;ajcalthestics@gmail.com</h4>
            <br>
          </div>
        </div>
        <div class="container content-section text-center">
         <a href="ourTeam.jsp"> <button class="btn btn-primary btn-lg"><i class="fa fa-users"></i>&nbsp;&nbsp;Meet the team</button></a>
        </div>
      </div>

      <br>
      <br>
      <div class="panel panel-default" id="panelRed">
      </div>
      

      <div class="container">
        <div class="row">
          <div class="col-sm-3">
            <h2 id="about">QUICK LINKS</h2><br>
            <li><a href="https://docs.google.com/forms/d/1_NAuKKSNA4jGLMg-71-yAds259YE66sTVqoVi8yYdXo/edit">
            Meet me in person</a></li>
            <br>
            <li><a href="">About us</a></li>
            <br>
            <li><a href="">Write to us</a></li>
            <br>
          </div>
          <div class="col-sm-6"></div>
          <div class="col-sm-3">
              <h2 id="about">JOIN US ON</h2><br>
              <span class="h5"><a href="https://www.facebook.com/aniket.jagtap.12">
              <i class="fa fa-facebook fa-2x"></i></a></span>&nbsp;&nbsp;&nbsp;
              <span class="h5"><a href="https://www.instagram.com/aniket_jagie.cal/">
              <i class="fa fa-instagram fa-2x"></i></a></span>&nbsp;&nbsp;&nbsp;
              <span class="h5"><a href="https://www.youtube.com">
              <i class="fa fa-youtube fa-2x"></i></a></span>&nbsp;&nbsp;&nbsp
              <span class="h5"><a href="https://plus.google.com/u/0/discover">
              <i class="fa fa-google-plus fa-2x"></i></a></span>
          </div>
          <br> <br>
        </div>
      </div>

      
      <div class="panel panel-default" id="panelWhite">
      </div>
      <br>
      <br>
    

    <div class="navbar navbar-inverse navbar-bottom" id="navbarBottom">
      <div class="container-fluid">
        <div class="nav navbar-nav navbar-left">
          Copyright &copy; 2017 Project CALESTHETICS. All Rights Reserved.
        </div>
        <div class="nav navbar-nav navbar-right">
          <span class="li"><i class="fa fa-globe fa-lg"></i>&nbsp;&nbsp;Developed by 
              <a href="https://about.me/aniketjagtap" style="font-weight: 700">ANIKET JAGTAP</a></span>
        </div>
      </div>
    </div>

    <script src="src/js/jquery.min.js"></script> 
    <script src="src/js/bootstrap.min.js"></script>
  </body>
</html>