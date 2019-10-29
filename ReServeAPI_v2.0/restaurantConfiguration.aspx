<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="restaurantConfiguration.aspx.cs" Inherits="ReServeAPI_v2._0.restaurantConfiguration" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <!--Mary Shiner CODE -- 10/8/2019 -->
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
	<!-- Created by Richard Compton 10/5/2019 -->
	<!-- Edits on 10/8/2019 -->
	
	<div class="container" style="margin-top:30px">
			<h1>ReServe Restauraunt Configuration</h1>

			<form action="/action_page.php">

			<!-- Restaurant configuration options -->

			  Restaurant name:<p></p>
			  <input id="name" type="text" runat="server" name="restaurantname"/><p></p>
			  Food style:<p></p>
			  <input id="foodStyle" runat="server" type="text" name="foodstyle"/><p></p>

			  Hours:<p></p>
			  <input id="hours" runat="server" type="text" name="hours"/><p></p>
                
			  Capacity:<p></p>
			  <input id="capacity" runat="server" type="text" name="capacity"/><p></p>

			  Total tables:<p></p>
			  <input id="tables" runat="server" type="text" name="totaltables"/><p></p><p></p>

			  <input id="chairs" runat="server" type="checkbox" name="chairs" value="Chairs"/> We have chairs<p></p>
			  <input id="booths" runat="server" type="checkbox" name="booths" value="Booths"/> We have booths<p></p>
			  <input id="bar" type="checkbox" name="bar" runat="server" value="Bar" checked /> We have a bar<p></p>
                
			  <h2>Delivery?</h2>
                <fieldset runat="server" id="delivery">
			  <input type="radio" runat="server" name="delivery" value="Yes" checked/> Yes<p></p>
			  <input type="radio" runat="server" name="delivery" value="No"/> No<p></p><p></p>
                    </fieldset>
   
			  Address:<p></p>
			  <input id="address" runat="server" type="text" name="address"/><p></p>

			  Phone Number:<p></p>
			  <input id="number" runat="server" type="text" name="phonenumber"/><p></p>

			  Distance Away Placeholder:<p></p>
			  <input id="distancePlaceholder" runat="server" type="text" name="distanceawayplaceholder"/><p></p>
			  Rating Placeholder:<p></p>
			  <input id="ratingPlaceholder" runat="server" type="text" name="ratingplaceholder"/><p></p>

			  Description:<p></p>
			  <p></p>
			  <textarea id="description" runat="server" name="message" maxlength="100" rows="10" cols="40" id="message"> </textarea>

			  <h2>Price Range</h2>
                <fieldset runat="server" id="priceRange">
			  <input type="radio" name="cost" value="$" checked/> Affordable<p></p>
			  <input type="radio" name="cost" value="$$"/> Average<p></p>
			  <input type="radio" name="cost" value="$$$"/> Expensive<p></p>
                    </fieldset>
			  <h2>Vegan Options?</h2>
                <fieldset runat="server" id="vegan">
			  <input type="radio" runat="server" name="vegan" value="Yes" checked/> Yes<p></p>
			  <input type="radio" runat="server" name="vegan" value="No"/> No<p></p><p></p>
                    </fieldset>
			  <h2>Catering Options?</h2>
                <fieldset runat="server" id="cateringOption">
			  <input type="radio" runat="server" name="catering" value="Yes" checked/> Yes<p></p>
			  <input type="radio" runat="server" name="catering" value="No"/> No<p></p><p></p>
                </fieldset>

                <fieldset runat="server" id="outdoor">
			  <h2>Outdoor Seating?</h2>
			  <input type="radio" runat="server" name="outdoor" value="Yes" checked/> Yes<p></p>
			  <input type="radio" runat="server" name="outdoor" value="No"/> No<p></p><p></p>
                    </fieldset>
                <fieldset runat="server" id="concerns">
			  <h2>Special Concerns</h2>
			  <input id ="ramps" runat="server" type="checkbox" name="ramps" value="Ramps"/> We have ramps<p></p>
			  <input id="child" runat="server" type="checkbox" name="booths" value="Children"/> We allow children<p></p>
                    </fieldset>
			  <p></p>
			  <p></p>
			  <p></p>
			  <p></p>
			  <p></p>
			 
                 <asp:Button runat="server" Text="Submit Restaurant Configuration" OnClick="btnSubmit_OnClick" id="btnSubmit" CssClass="signupbtn"></asp:Button>
			</form>
	</div>
    <p></p>
    <!--This is the footer, it gives the address and copyright information of the website-->
    <div class="text-center" style="padding-top:12px; padding-bottom:12px; background-color:#ED6C06; color:white;">
        &copy; Copyright 2019 ~ ReServe ~
    </div>
</body>
</html>

