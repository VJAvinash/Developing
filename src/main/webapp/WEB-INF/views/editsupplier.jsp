<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
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
<title>Edit Supplier</title>

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
        face:courier;
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
      <li class="active"><a href="ManageSuppliers">ManageSuppliers</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="${pageContext.request.contextPath}/Logout"><span>Logout</span></a></li>
     
    </ul>
  </div>
</nav>
<center>
<h1><font size=6 face="courier">Edit Supplier <span class="glyphicon glyphicon-pencil"></span></font></h1>
</center>
<br>
   <form:form commandName="Supplier" method="post" action="updatesupplier">
       <table class="table table-bordered" >
 
		   
               <form:input path="id" type="hidden" value="${supplier.id}"/>          
           <tr><td><form:label path="supname">Supplier Name :</form:label></td>
               <td><form:input path="supname" value="${supplier.supname}"/></td>
           </tr>           
           <tr><td><form:label path="suplocation">Supplier Location:</form:label></td>
               <td><form:input path="suplocation" value="${supplier.suplocation}"/></td>
           </tr>
           <tr><td><form:label path="categoryid">Category Id :</form:label></td>
               <td><form:input path="categoryid" value="${supplier.categoryid}"/></td>
           </tr>         
           <tr><td><form:label path="categoryname">Category Name :</form:label></td>
               <td><form:input path="categoryname" value="${supplier.categoryname}"/> </td>
           </tr>           
           <tr><td><form:label path="productid">Product Id :</form:label></td>
               <td><form:input path="productid" value="${supplier.productid}"/> </td>
           </tr>         
           <tr><td><form:label path="productname">Product Name :</form:label></td>
               <td><form:input path="productname" value="${supplier.productname}"/></td>
           </tr>
             <td><input type="submit" value="Submit" class="btn btn-success btn-lg"/></td>
       </table>
   </form:form> 
   </div>
   </div>
		<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>©© 2016 All Rights Reserved.</p>
  </div>
  </div>
	</nav>
   
</body>
</html>