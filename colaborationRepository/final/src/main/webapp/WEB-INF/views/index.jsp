<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
     <title>Home</title>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
    rel="stylesheet" type="text/css">
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
    <link href="resources/css/csss" rel="stylesheet" type="text/css">
    
  <!--    <!-- Bootstrap Core CSS -->
    <link href="resources/styles/css/bootstrap.min.css" rel="stylesheet">

    Custom CSS
    <link href="resources/styles/css/business-casual.css" rel="stylesheet">

    Fonts
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	
	
	<script src="https://code.jquery.com/jquery.js"></script>

<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
   </head>
  
  <body data-spy="scroll">
    <div class="cover">
      <div class="navbar">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span><h3>Colaboration</h3></span></a>
          </div>
          <div class="collapse navbar-collapse" id="navbar-ex-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a href="index.jsp"><h3>Home</h3></a>
              </li>
              <li>
                <a href="contact.html "><h3>Contacts</h3></a>
              </li>
                <li>
                <a href="aboutus"><h3>About</h3></a>
              </li>
              <li class="active">
                <a href="register"><h3>Sign Up</h3></a>
              </li>
              <li>
                <a href="signin"><h3>Login</h3></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
          <!-- ==== Starting modal ==== -->
	
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Recommend a Friend</h4>
        </div>
        <div class="modal-body">
         <form class="form-horizontal" name="loginform" method="post" action="login">
    <div class="form-group">
        <label class="control-label col-md-4" for="employee_code">Employee Code</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="employee_code" name="employee_code" placeholder="Enter Your Employee Code"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="userpassword">Password</label>
        <div class="col-md-6">
            <input type="password" class="form-control" id="userpassword" name="userpassword" placeholder="Password"/>
        </div>
    </div>
    
    <div class="form-group">
        <div class="col-md-6">
			<a href="#" data-dismiss="modal" class="btn">Close</a>
            <button type="submit" value="Submit" class="btn btn-custom pull-right">Log-in</button>
        </div>
    </div>
</form>
        </div><!-- End of Modal body -->
        </div><!-- End of Modal content -->
        </div><!-- End of Modal dialog -->
    </div>
    
    <!-- ================================== -->
      <div class="cover-image" style="background-image : url('resources/css/digital_world.jpg')"></div>
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h1 class="text-warning">COLABORATION</h1>
            <br>
            <br>
          </div>
        </div>
      </div>
    </div>
    <div id="fullcarousel-example" data-interval="5000" class="carousel hidden-lg hidden-md hidden-sm hidden-xs slide"
    data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" id="3">
          <img src="resources/css/photo-montage-1313550.jpg">
          <div class="carousel-caption">
            <h2>Title</h2>
            <p>Description</p>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
    </div>
    <div class="carousel slide" id="fullcarousel-example" data-interval="5000"
    data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" id="1">
          <img src="resources/css/hand-1592415.jpg">
          <div class="carousel-caption">
            <h2>Colaboration World</h2>
            <p></p>
          </div>
        </div>
        <div class="item">
          <img src="resources/css/photo-montage-1313550.jpg">
          <div class="carousel-caption">
            <h2>Colaboration world</h2>
            <p></p>
          </div>
        </div>
        <div class="item">
          <img src="resources/css/smartphone-1445489.jpg">
          <div class="carousel-caption">
            <h2>Colaboration world</h2>
            <p></p>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
    </div>
    <footer class="section section-primary">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <h1>Collaboration</h1>
            <p>Welcome to our Colaboration World</p>
          </div>
          <div class="col-sm-6">
            <p class="text-info text-right">
              <br>
              <br>
            </p>
            <div class="row">
              <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 hidden-xs text-right">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
     <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>

</html>