<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantSignUp.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_RestaurantSignUp" %>

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

    <form id="form1" runat="server">

    <div class="container">
        <div class="row">
            <h2>Restaurant Sign Up</h2>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="AdminEmail" runat="server" Text="Admin Email"></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="AdminEmailEntry" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="AdminPassword" runat="server" Text="Password"></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="AdminPasswordEntry" runat="server" type="password"></asp:TextBox>
            </div>
        </div>
            
        <div class="row">
            <div class="col-25">
                <asp:Label ID="repeatPassword" runat="server" Text="Repeat Password" ></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="RepeatPasswordEntry" runat="server" type="password"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="RestaurantName" runat="server" Text="Restaurant Name"></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="RestaurantNameEntry" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="RestaurantAddress" runat="server" Text="Address"></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="RestaurantAddressEntry" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="RestaurantPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="RestaurantPhoneNumberEntry" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="Description" runat="server" Text="Description"></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="DescriptionEntry" runat="server" Height="41px" Width="159px"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="RestaurantHours" runat="server" Text="Hours"></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="RestaurantHoursEntry" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="RestaurantTypeofFood" runat="server" Text="Type of Food"></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="RestaurantTypeofFoodEntry" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label Style="color: red" ID="errorLbl" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-75 right">
                <asp:Button ID="NextBtn" runat="server" Text="Next" OnClick="toContinuedSignUp"/>
            </div>
        </div>
    </div>
    
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>