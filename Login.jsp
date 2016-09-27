<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style type="text/css">
.errorblock {
 color: #ff0000;
 background-color: #ffEEEE;
 border: 3px solid #ff0000;
 padding: 8px;
 margin: 16px;
}
.logoutblock {
 color: blue;
 background-color: lightgreen;
 border: 3px solid blue;
 padding: 8px;
 margin: 16px;
}
</style>
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
        .navbar-default{
        font-size:15px;
        }
        .navbar-nav{
        face:courier;
        }
       
        .navbar-default{
        position:absoulute;
        top:0;
        width:100%;
        }
  
  
  </style>
</head>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home">Headphones.com</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    </ul>
  </div>
</nav>
<div class="container">
<c:if test="${error=='true'}">
  <div class="errorblock">
   Invalid Username or Password
 
  </div>
 </c:if>
 <c:if test="${not empty logoutmsg }">
   <div class="logoutblock">
   <c:out value="${logoutmsg}" />
   </div>
 </c:if>
<form role="form" action="j_spring_security_check" method="post" commandName="User" >
  <div class="form-group">
    <label for="username">UserName:</label>
    <input type="text"  name="username"  class="form-control" placeholder="Enter User Name" />
  </div>
  <div class="form-group">
    <label for="password">Password:</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password" /> 
  </div>
  
  <button type="submit"  class="btn btn-default" >Submit</button>
</form>
<h4>Register Here <span class="glyphicon glyphicon-hand-right"> <a href="${pageContext.servletContext.contextPath}/Register?id={{x.Id}}" class="btn btn-primary"><span>SignUp</span></a>

</div>
	<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>© 2016 All Rights Reserved.</p>
  </div>
  </div>
	</nav>
</body>
</html>
