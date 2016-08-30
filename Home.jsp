<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html lang="en">
<head>
  <title>OnlineShoppingCart</title>
  
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
  .navbar-default .navbar-brand{
  color:#FFFFFF
  }
  .navbar-default .navbar-brand:hover,
  .navbar-default .navbar-brand:focus{
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
    background-color:#1A242F;
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
  
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 50%;
      margin: auto;
  }
  </style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">

  <div class="container-fluid">
  
    <div class="navbar-header">
    <a class="navbar-brand" href="home"><font size="5"> HeadPhonesCart</font></a>
       </div>
       <p>
<div class="input-group col-lg-4">
    <input type="text" class="form-control" placeholder="Enter The Search Terms Here"/>
    <span class="input-group-btn">
    <button class="btn btn-primary" type="button">Search</button>
    </span>  
    </div>
    </p>
   <div class="navbar-collapse collapse"></div> 
     <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="#">Home</a></li>
            <li><a href="">Contact us</a></li>
               <li><a href="">ViewAll</a></li>  
                            
       <li><a href="Register"><span class="glyphicon glyphicon-log-in"></span> SignUp</a></li>
       <li class="dropdown">
       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>Login<b
        class="caret"></b></a>
        <ul class="dropdown-menu">
        <li class ="dropdown-header">Login Details</li>
        <li><a href="#">Admin</a></li>
                <li class="divider"></li>        
         <li><a href="#">User</a></li>  
        <li>
     </ul>
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
         <img src="<c:url value="/resources/images/Avi3.jpg"/>" alt="Chania" style="width:10000px; height=300px">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/Avi2.jpg"/>" alt="Chania" style="width:10000px; height=300px">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/Avi1.jpg"/>" alt="Chania" style="width:10000px; height=300px"> 
      </div>
      
      
       <div class="item">
         <img src="<c:url value="/resources/images/Avi4.jpg"/>" alt="Chania" style="width:10000px; height=300px">
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
      <a href="enter">
          
         <img src="<c:url value="/resources/images/Avi5.jpg"/>" alt="Pulpit Rock" style="width:300px;height:150px">
             </div>
    <div class="col-sm-4">
           
         <img src="<c:url value="/resources/images/Avi6.jpg"/>" alt="Moustiers Sainte Marie" style="width:300px;height:150px">
         
    </div>
    <div class="col-sm-4">
      <a href="enter pro?data=table">
           <img src="<c:url value="/resources/images/Avi7.jpg"/>" alt="Cinque Terre" style="width:300px;height:150px">
      </a>
    </div>
  </div>
</div>
<script>
$(".carousel").carousel({
	interval:1400
})
</script>
<div class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>© 2016 Headphones Store.</p>
  </div>
  </div>
  </div>
</body>
</html>