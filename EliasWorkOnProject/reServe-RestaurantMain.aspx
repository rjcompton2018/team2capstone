<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantMain.aspx.cs" Inherits="ReServeAPI_v2._0.RestaurantMainPage" %>

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
    <style>
    .table {
        color: green;
        display: block;
        
        overflow: scroll; <!-- Available options: visible, hidden, scroll, auto -->
       
    }
</style>


</head>
<body>
<nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
  <li style="list-style-type: none; text-decoration:none;"><a href="Main.html"><img src="images/tea-time-72-292243.png"></a></li>
  <li style="list-style-type: none; text-decoration:none;"></li>
  <a class="navbar-brand" href="Main.html">ReServe</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="ReServe-Login.aspx">Login</a>
      </li>    
    </ul>
  </div>  
</nav>
<!-- HTML -->
<div class="background">
  <div class="centered" style="top:15%;";><h2>~ ReServe ~</h2></div>
  
  <div class="centered" style="top:22%;"><h2>Your personal restaurant waitime calculator!</h2></div>
</div>
<div  style="margin-top:30px">
  <div class="row">
    <div class="col-sm-8">
    
        <h2>&nbsp;</h2>
        <h2>Restaurant Details</h2>
	  <div class="menu">
          <form id="MyForm" method="post" runat="server">
          <asp:Button ID="Display" runat="server" Text="Display Info" OnClick="Button1_Click" Width="158px" />
          &nbsp;<asp:Button ID="Edit" runat="server" Text="Edit Info" Width="158px" OnClick="Edit_Click" />
		      <br />
		
         
          <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
    <Columns>
        <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="FoodStyle" HeaderText="FoodStyle" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Hours" HeaderText="Hours" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Capacity" HeaderText="Capacity" />
        <asp:BoundField ItemStyle-Width="150px" DataField="TotalTables" HeaderText="TotalTables" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Chairs" HeaderText="Chairs" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Booths" HeaderText="Booths" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Bar" HeaderText="Bar" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Delivery" HeaderText="Delivery" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Address" HeaderText="Address" />
        <asp:BoundField ItemStyle-Width="150px" DataField="PhoneNumber" HeaderText="PhoneNumber" />
        <asp:BoundField ItemStyle-Width="150px" DataField="DistanceAway" HeaderText="DistanceAway" />
        <asp:BoundField ItemStyle-Width="150px" DataField="RatingPlaceHolder" HeaderText="RatingPlaceHolder" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Description" HeaderText="Description" />
        <asp:BoundField ItemStyle-Width="150px" DataField="PriceRange" HeaderText="PriceRange" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Vegan" HeaderText="Vegan" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Catering" HeaderText="Catering" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Outdoor" HeaderText="Outdoor" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Ramps" HeaderText="Ramps" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Children" HeaderText="Children" />
    </Columns>
</asp:GridView>
      </form>
  
	
		
		
		</div>
    </div>
  </div>

</div>
		<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
	<!--This is the footer, it gives the address and copyright information of the website-->
  <div class="text-center" style="padding-top:12px; padding-bottom:12px; background-color:#ED6C06; color:white;">
  &copy; Copyright 2019 ~ ReServe ~
  </div>
</body>
</html>