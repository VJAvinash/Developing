<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Admin Page</title>
</head>
<head>
<style>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
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
        font-size:15px;
        }
        .navbar-nav{
        face:serif;
        }
       
        .navbar-default{
        position:absoulute;
        top:0;
        width:100%;
        }
  
  </style>
</head>
<body>

<nav class="navbar navbar-default"role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Admin Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Admin"><span class="glyphicon glyphicon-home"> Home</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="Admin">Hello VJ<%=session.getAttribute("loggedInUser")%></a></li>
      <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
 	 <div class="container">
  <div class="jumbotron text-center">
    <h1>Welcome VJAvinash</h1>
  <p>This Is Admin Page</p>
  <a href="${pageContext.servletContext.contextPath}/ManageProducts?id={{x.Id}}" class="btn btn-warning"><span>Products</span></a>
    <a href="${pageContext.servletContext.contextPath}/ManageSuppliers?id={{x.Id}}" class="btn btn-primary"><span>Suppliers</span></a>
    
  </div>
  </div>
  <br>
  <div class="container">
            
  <div class="row">
    <div class="col-sm-4">
      <a href="ManageProducts">
          
         <img src="<c:url value="/resources/images/A5.jpg"/>" alt="Pulpit Rock" style="width:354px;height:150px">
             </div>
    <div class="col-sm-4">
        <a href="ManageProducts">
         <img src="<c:url value="/resources/images/A6.jpg"/>" alt="Moustiers Sainte Marie" style="width:354px;height:150px">
         
    </div>
    
    <div class="col-sm-4">
      <a href="ManageProducts">
           <img src="<c:url value="/resources/images/A7.jpg"/>" alt="Cinque Terre" style="width:354px;height:150px">
      </a>
    </div>
    
  </div>
</div>
<br><br><br>
    <nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>© 2016 All Rights Reserved.</p>
  </div>
  </div>
  </nav>
</body>