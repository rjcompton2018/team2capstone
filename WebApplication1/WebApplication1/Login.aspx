﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>
			ReServe
		</title>

		<!--Links to CSS (Bootstrap)-->
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
			<link rel="stylesheet" href="css/StyleReServe.css" />
<!--Creates Icon in Tab-->
		<link rel="shortcut icon" href="images/tea-time-24-292243.png"/>
<meta name="viewport" content="width=device-width, initial-scale=1">



</head>
<body>
<nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
  <li style="list-style-type: none; text-decoration:none;"><a href="ReServe-Main.html"><img src="images/tea-time-72-292243.png"></a></li>
  <li style="list-style-type: none; text-decoration:none;"></li>
  <a class="navbar-brand" href="ReServe-Main.html">ReServe</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="ReServe-Login.html">Login</a>
      </li>    
    </ul>
  </div>  
</nav>
<!-- HTML -->
<div class="background">
  <div class="centered" style="top:15%;";><h2>~ ReServe ~</h2></div>
  </br>
  <div class="centered" style="top:22%;"><h2>Your personal restaurant waitime calculator!</h2></div>
</div>
<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-8">
      <h2>ReServe Login</h2>
	  <div class="menu">
		</br>
		<p> <a href="restaurantSignUpPage.aspx">Click here to sign up!</a></p> 
		 <!--The form asks for a user's email and password-->
		<p> Login to your account: </p>
			<form id="form" method="POST" action="/my-handling-form-page">
			<p>Email:</p><input type="email" name="email" required text="text">
			</br>
			</br>
			<p>Password:</p><input type="password" name="password" required text="text">
			<input type="submit" value="Login" id="login">
		</form>
		</br>
		</br>
		</div>
    </div>
  </div>
</div>
		</br>
		</br>
	<!--This is the footer, it gives the address and copyright information of the website-->
  <div class="text-center" style="padding-top:12px; padding-bottom:12px; background-color:#ED6C06; color:white;">
  &copy; Copyright 2019 ~ ReServe ~
  </div>
</body>
</html>