<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Contact Us</title>
<style>
#form
{
    min-width:1200px;
    max-width:3500px;
    margin:auto;
    font-family: sans-serif;
    box-shadow: 5px 5px 5px #888888;
    padding:20px;
    border:4px solid #27748A;
}

#form h2
{
    color:#27748A;
    font-size:35px;
    margin:0;
}

#form p
{
    font-size:15px;
    color:#222222;
}
#form div
{
    margin-top:10px;
}

#form input, textarea, button
{
    width:100%;
    border:2px solid #9ECEDB;
    padding:3px 5px;
}

#form label
{
    font-weight:bold;
    font-size:12px;
    color:#184552;
}
#form button
{
    background-color: #9ECEDB;
    color: #184552;
    cursor:pointer;
}

#form button:hover
{
    background-color: #CBEAF2;
}
.required
{
    color:#dd6666;
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

<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home">Headphones.com</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Contact"><span class="glyphicon glyphicon-phone-alt"> ConatactUs</a></li>
    </ul>
  </div>
</nav>
<br><br><br>
<form id="form" action="/process.php" method="post">
    <h2>Get in Touch</h2>
    <p>Use the form below to get in touch, or give us a call on 1800-103-123
    <!--fields-->
    <div>
    <label for='name'>Name<span class='required'>(required)</span></label>
    <input type='text' name='name' placeholder='your name here' required />
</div>

<div>
    <label for='tel'>Telephone</label>
    <input type='tel' name='tel' placeholder='your telephone here' />
</div>

<div>
    <label for='email'>Email <span class='required'>(required)</span></label>
    <input type='email' name='email' placeholder='you@yourdomain.com' required />
</div>

<div>
    <label for='url'>Product</label>
    <input type='url' name='product' placeholder='product id' />
</div>
<div>
    <label for='message'>Message <span class='required'>(required)</span></label>
    <textarea name='message' required></textarea>
</div>

<div>
    <button type='submit'>Send Message</button>
</div>
</form>
 <nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">
  <p>© 2016 All Rights Reserved.</p>
  </div>
  </div>
  </nav>
</body>
</html>