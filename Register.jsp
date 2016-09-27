<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
 
  </style>
  </head>

<body>
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home">HeadPhones.com</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Register"><span class="glyphicon glyphicon-log-out"></span> SignUp</a></li>
    
    </ul>
   
  </div>
</nav>
			<div class="container">
				<form:form commandName="UserDetails" method="post" action="storeUser">
					<div class="form-group ">
						<label for="username">UserName:</label>
						<form:errors path="username" cssStyle="color: #ff0000" />
						<form:input path="username" id="username" class="form-Control" />
					</div>
                    
					<div class="form-group">
						<label for="password">Password:</label> 
						<form:errors path="password" cssStyle="color: #ff0000" />
						<form:input type="password" path="password" id="password"
							class="form-Control" />
					</div>
					<div class="form-group">
						<label for="confirmpassword">ConfirmPassword:</label>
						<form:errors path="confirmpassword" cssStyle="color: #ff0000" />
						<form:input type="password" path="confirmpassword" id="password"
							class="form-Control" />
					</div>
					<div class="form-group">
						<label for="mailid">Email:</label>
						<form:errors path="mailid" cssStyle="color: #ff0000" />
						<form:input type="email" pattern="[^ @]*@[^ @]*" path="mailid" id="email" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="phone">Mobile number:</label>
						<form:errors path="phone" cssStyle="color: #ff0000" />
						<form:input path="phone" id="phone" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="address">Address:</label>
						<form:errors path="address" cssStyle="color: #ff0000" />
						<form:input path="address" id="address" class="form-Control" />
					</div>
			<button type="Submit" class="btn btn-default">Submit</button>
			<button type="Reset" class="btn btn-default">Reset</button>
			<button type="Cancel" class="btn btn-default">Cancel</button>
			
			</form:form>			
			</div>
<div class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>© 2016 All Rights Reserved.</p>
  </div>
  </body>
</html>