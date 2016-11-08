<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta Name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>EditProduct</title>
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
      <a class="navbar-brand" href="Admin">Admin Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ManageProducts">ManageProducts</a></li>
           
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<h1><font size=6 face="courier"> Edit Product <span class="glyphicon glyphicon-pencil"></span></font></h1>

<br>
  <form:form  modelAttribute="Product" method="post" action="update" enctype="multipart/form-data">
   <table class="table table-bordered" >
    
	<form:input path="id" type="hidden" value="${product.id}"/> 
     
      <tr><td><form:label path="Name">Product Name :</form:label></td>
               <td><form:input path="Name" value="${product.name}"/></td>
           </tr>
               <tr><td><form:label path="Price">Product Price :</form:label></td>
               <td><form:input path="Price" value="${product.price}"/></td>
           </tr>
           <tr><td><form:label path="Description">Description :</form:label></td>
               <td><form:input path="Description" value="${product.description}"/></td>
           </tr>
                <tr><td><form:label path="primarymaterial">Primary Material :</form:label></td>
               <td><form:input path="primarymaterial" value="${product.primarymaterial}"/></td>
           </tr>
            
              <tr><td><form:label path="warranty">Warranty :</form:label></td>
               <td><form:input path="warranty" value="${product.warranty}"/></td>
           </tr>
             <tr><td><form:label path="quantity">Quantity :</form:label></td>
               <td><form:input path="quantity" value="${product.quantity}"/></td>
           </tr>
            
           <tr><td><form:label path="img">Product Image :</form:label></td>
               <td><form:input path="img" type="file" />
               <font color="red"><form:errors path="img"></form:errors></font></td><tr>
               <tr><td></td>
               <td><input type="submit" value="submit" class="btn btn-success active btn-lg"/></td>
           </tr>
           </table>
                      
  </form:form> 
  <br><br><br>  
  <nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>© 2016 All Rights Reserved.</p>
  </div>
  </div>
  </nav>
</body>
</html>
