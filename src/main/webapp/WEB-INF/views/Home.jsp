<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html lang="en">
<head>
  <title>Headphones.com</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .navbar-default  {
  background-color: #2C3E50;
  border-color:#FFFFFF
  color: #FFFFFF; 
  }
  .navbar-default .navbar-header{
  color:#FFFFFF
  }
  .navbar-default .navbar-header:hover,
  .navbar-default .navbar-header:focus{
    color:#18BC9C;
    background-color: transparent;
    }
    
    .navbar-default .navbar-nav > li > a {
    color:#FFFFFF;
    }
    .navbar-default .navbar-nav >.active > a,
    .navbar-default .navbar-nav >.active > a:hover,
    .navbar-default .navbar-nav >.active > a:focus {
    color:#FFFFFF;
    background-color:#4CAF50;
    }
    .navbar-default .navbar-nav > li > a:hover,
    .navbar-default .navbar-nav > li > a:focus{
    color:#18BC9C;
    background-color: transparent;
    }
    .navbar-default .navbar-nav > .open > a,
    .navbar-default .navbar-nav > .open > a:hover,
    .navbar-default .navbar-nav > .open > a:focus{
        background-color:#1A242F;
        color:#FFFFFF;
        } 
        .navbar-default{
         font-face:Gadget;
        font-size:17px;
        }
        
        .navbar-default{
        position:absoulute;
        top:0;
        width:100%;
        }
  
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
     height: 500px;
     width: 500px;
  }
  </style>
</head>
<body>       
       <nav class="navbar navbar-default" role="navigation">
         <div class="container-fluid">
         <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse" date-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
         <span class = "icon-bar"></span>
         <span class = "icon-bar"></span>
         <span class = "icon-bar"></span>
         </button>        
      
       <h1 class="navbar-header" href="Home">
       <font size=6 face="courier"><span class="glyphicon glyphicon-headphones">Headphones.com®</span></font></h1>
       </div>
        <div class="navbar-collapse collapse"> 
        
        <div class="nav navbar-nav navbar-right">
        <li class="active"><a href="Home"><span class="glyphicon glyphicon-home"></span> Home</a></li>
         <li><a href="Products"><span class="glyphicon glyphicon-bell"></span> Products</a></li>        
        <li><a href="Contact"><span class="glyphicon glyphicon-phone-alt"></span> Contact Us</a></li>          
        <li ><a href="Register"><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
        <li ><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>    
     </ul>
     
     </div>
     </div>
     </div>
   </div> 
</nav>
       <div class="container">  
       <div class="center-block">    
       <br> 
       <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
       <ol class="carousel-indicators">
       <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
       <li data-target="#myCarousel" data-slide-to="1"></li>
       <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    
   <!-- Wrapper for slides -->
    
    
    <div class="carousel-inner" role="listbox">
    
    
    
    
      <div class="item active">
         <img src="<c:url value="/resources/images/A1.jpg"/>" alt="Chania" style="width:10000px; height=300px">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/A2.jpg"/>" alt="Chania" style="width:10000px; height=300px">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/A3.jpg"/>" alt="Chania" style="width:10000px; height=300px"> 
      </div>
      
      
       <div class="item">
         <img src="<c:url value="/resources/images/A4.jpg"/>" alt="Chania" style="width:10000px; height=300px">
      </div>
      
          <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></div></div>
  <br><br>
 

<div class="container">
            
  <div class="row">
    <div class="col-sm-4">
       <a href="Products">
          
         <img src="<c:url value="/resources/images/A5.jpg"/>" alt="Pulpit Rock" style="width:300px;height:150px">
             </div>
    <div class="col-sm-4">
           <a href="Products"> 
         <img src="<c:url value="/resources/images/A6.jpg"/>" alt="Moustiers Sainte Marie" style="width:300px;height:150px">
         
    </div>
    <div class="col-sm-4">
      <a href="Products">
           <img src="<c:url value="/resources/images/A7.jpg"/>" alt="Cinque Terre" style="width:300px;height:150px">
      </a>
    </div>
  </div>
</div>
<script>
$(".carousel").carousel({
	interval:1800
})
</script>
<br><br><br>
<nav class="navbar navbar-inverse navbar-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>© 2016 All Rights Reserved.</p>
  </div>
  </div>
  </nav>
</body>
</html>