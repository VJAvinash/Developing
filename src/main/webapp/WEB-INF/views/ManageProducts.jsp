<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<title>Manage Products</title>
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
   <sec:authorize access="hasRole('ROLE_USER')">
      <a class="navbar-brand" href="UserHome">Headphones.com</a>
      </sec:authorize>
      <sec:authorize access="hasRole('ROLE_ADMIN')">
      <a class="navbar-brand" href="Admin">Admin Home</a>
      </sec:authorize>     
    </div>
    <ul class="nav navbar-nav">
   
      <li class="active"><a href="ManageProducts">Products</a></li>
      
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
    <sec:authorize access="hasRole('ROLE_ADMIN')">
  <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
  </sec:authorize>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <sec:authorize access="hasRole('ROLE_USER')">
  <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
  </sec:authorize>
    </ul>
  </div>
</nav>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<center>
<h1><font size=6 face="courier"><span class="glyphicon glyphicon-bullhorn"> Manage Products</span></font></h1>
</center>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_USER')">
<center>
<h1><font size=6 face="courier"><span class="glyphicon glyphicon-bullhorn"> Products List</span></font></h1>
</center>
</sec:authorize>
<div class="container">
		<div ng-app="myApp" ng-controller="customersCtrl">
		<p>     
       <div class="input-group col-md-11 col-sm-5 col-xs-8 navbar-left" style="padding:10px;">
       <input type="text" class="form-control" placeholder="Enter The Search Terms Here" ng-model="searchBy.Name" />
       <span class="input-group-btn">
       <button class="btn btn-primary" type="button">Search</button>
    </span>  
  </div>
 </p>
<table class="table table-striped table-hover">
  <tr>
       
       <th>Product Name</th>
       <th>Product Price</th>
       <th>Product Description</th>
       <th>Action</th>
  </tr>
  <tr ng-repeat="x in names | filter:searchBy">
   
    <td>{{x.Name}}</td>
    <td>{{x.Price}}</td>
    <td>{{x.Description}}</td>
    <td>
    <a href="${pageContext.servletContext.contextPath}/viewproducts?id={{x.id}}" class="btn btn-info"class="btn btn-info"><span class="glyphicon glyphicon-search"> View</span></a>
    <sec:authorize access="hasRole('ROLE_ADMIN')">
    <a href="${pageContext.servletContext.contextPath}/editproduct?id={{x.id}}" class="btn btn-primary"><span class="glyphicon glyphicon-edit"> Edit</span></a>
    <a href="${pageContext.servletContext.contextPath}/delete?id={{x.id}}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"> Delete</span></a>
   </sec:authorize>
   </td>  
  </tr>
</table>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<a href="addproduct" class="btn btn-success active btn-lg">Add Product</a>
</sec:authorize>


</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("list")
    .then(function (response) {$scope.names = response.data;});
});
</script>
</div>
<br><br><br><br>
	<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>© 2016 All Rights Reserved.</p>
  </div>
  </div>
  </nav>
</body>
</html>



