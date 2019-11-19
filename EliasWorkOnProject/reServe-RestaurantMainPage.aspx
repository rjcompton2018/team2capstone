<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantMainPage.aspx.cs" Inherits="ReServeAPI_v2._0.RestaurantMainPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Restaurant Main Page</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <!--#include file="includes/navbar-restaurant.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->
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
  
          <!--#include file="includes/footer.inc"-->
</body>
</html>