<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-TableConfiguration.aspx.cs" Inherits="ReServeAPI_v2._0.ReServe_Drag_Drop" %>

<!DOCTYPE HTML>
<html>
<head>
    <!--Mary Shiner CODE -- 10/22/2019 -->
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
    <link rel="shortcut icon" href="images/tea-time-24-292243.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--Link to JavaScript needed for Bootstrap functionality Kelly Kurkowski 9/20/19-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <!--Navbar -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
        <li style="list-style-type: none; text-decoration:none;"><a href="ReServe-Main.html"><img src="images/tea-time-72-292243.png"></a></li>
        <a class="navbar-brand" href="ReServe-Main.html">ReServe</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <!--Navbar Links -->
                    <a class="nav-link" href="ReServe-Login.html">Login</a>
                </li>
            </ul>
        </div>
    </nav>
   <!-- HTML -->
    <!--Background Image Bar -->
    <div class="background">
        <img src="images/architecture-chairs-design-2894275.jpg" style="box-sizing: border-box; width: 100%; height: 230px; background-size: 100% 100%; box-shadow: 2px 2px 40px rgba(0, 0, 0, .4),-2px 2px 20px rgba(0, 0, 0, .4);">
        <div class="centered" style="top:15%;"><h1>~ ReServe ~</h1></div>
        <div class="centered" style="top:22%;"><p>Your personal restaurant waitime calculator!</p></div>
    </div>
	<!-- Main Row Container -->
    <div class="container" style="margin-top:30px">
        <div class="row"> 
            <div class="col-sm-8">
                <h2>ReServe</h2>
				<img src="images/1386014684000-applebees.jpg" width="220" height="100">
                <div class="menu">
                    <p></p>
                    <p>
                        Welcome to Applebees's
                    <p></p>
                    Below is the layout of the restaurant. To choose a table click the radio button. To finish click submit. </p>
                    <p></p>
			 
							  <div class="container-fluid">
								<!-- Column width 25% -->
								<div class="row">
										<div class="col-sm">
											    <p>Table 1</p>
												<p>Waitime: </p>
												<p></p>
												<div class="div1"></div>
												<p></p>
										</div>
										<div class="col-sm">
												<p>Table 2</p>
												<p>Waitime: </p>
												<p></p>
												<div class="div1"></div>
												<p></p>
										</div>
										<div class="col-sm">
												<p>Table 3</p>
												<p>Waitime: </p>
												<p></p>
												<div class="div1"></div>											  
												<p></p>
								        </div>
										<div class="col-sm">
												<p>Table 4</p>
												<p>Waitime: </p>
												<p></p>
												<div class="div1"></div> 
												<p></p>
										</div>
								</div>
								<p></p>
								<!-- Column width 25% -->
								<div class="row">
										<div class="col-sm">
												<p>Table 5</p>
												<p>Waitime: </p>
												<p></p>
												<div class="div1"></div> 
												<p></p>
										</div>
										<div class="col-sm">
												<p>Table 6</p>
												<p>Waitime: </p>
												<p></p>
												<div class="div1"></div>
												<p></p>
										</div>
										<div class="col-sm">
												<p>Table 7</p>
												<p>Waitime: </p>
												<p></p>
												<div class="div1"></div>
												<p></p>
										</div>
										<div class="col-sm">
												<p>Table 8</p>
												<p>Waitime: </p>
												<p></p>
												<div class="div1"></div>
												<p></p>
										</div>
								</div>
								<p></p>
								<!-- Column width 25% -->
								<div class="row">
										<div class="col-sm">
											<p>Table 9</p>
											<p>Waitime: </p>
												<p></p>
												<div class="div1"></div> 
												<p></p>
										</div>
										<div class="col-sm">
											<p>Table 10</p>
											<p>Waitime: </p>
												<p></p>
												<div class="div1"></div>
												<p></p>
										</div>
										<div class="col-sm">
											<p>Table 11</p>
											<p>Waitime: </p>
												<p></p>
												<div class="div1"></div> 
												<p></p>
								        </div>
										<div class="col-sm">
											<p>Table 12</p>
											<p>Waitime: </p>
												<p></p>
												<div class="div1"></div>
												<p></p>
										</div>
								</div>
												<form action="">
												<p></p>
											<div class="row">
														<div class="col-sm">
																<input type="radio" name="table" value="table1"> Table 1<p></p>
																<input type="radio" name="table" value="table2"> Table 2<p></p>
																<input type="radio" name="table" value="table3"> Table 3<p></p>
																<input type="radio" name="table" value="table4"> Table 4<p></p>
														</div>
												<p></p>
														<div class="col-sm">
																<input type="radio" name="table" value="table5"> Table 5<p></p>
																<input type="radio" name="table" value="table6"> Table 6<p></p>
																<input type="radio" name="table" value="table7"> Table 7<p></p>
																<input type="radio" name="table" value="table8"> Table 8<p></p>
														</div>
											<p></p>
														<div class="col-sm">
																
																<input type="radio" name="table" value="table9"> Table 9<p></p>
																<input type="radio" name="table" value="table10"> Table 10<p></p>
																<input type="radio" name="table" value="table11"> Table 11<p></p>
																<input type="radio" name="table" value="table12"> Table 12<p></p>
																<p></p>
														</div>
											</div>
											<p></p>
											<p></p>
											<p></p>
											<input type="submit" value="Submit" id="submit">
											</form>
								</div>
				</div>
			</div>
		</div>
	</div>
    <p></p>
    <p></p>
    <!--This is the footer, it gives the address and copyright information of the website-->
    <div class="text-center" style="padding-top:12px; padding-right:0px; padding-left:0px; padding-bottom:12px; background-color:#ED6C06; color:white;">
        &copy; Copyright 2019 ~ ReServe ~
    </div>
</body>
</html>
