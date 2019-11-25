﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-CustomerMainPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_CustomerMainPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Customer Sign Up</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <form runat="server" ID="myForm">
    <!--#include file="includes/navbar-customer.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->
   
    <div class="container">
            <h2>YOU ARE A CUSTOMER</h2>
            <p>This is what a customer will see on the main page, after they login.</p>
        
        <br/>
            <br />
    </div>

    <!--#include file="includes/footer.inc"-->
        
    <div class="container" ID="Buttons">
     <asp:Button ID="accbtn" runat="server" Text="Account Info" OnClick="accbtn_Click" />&nbsp;<asp:Button ID="viewbtn" runat="server" Text="View Reservation" OnClick="viewbtn_Click" />&nbsp;<asp:Button ID="makebtn" runat="server" Text="Make Reservation" OnClick="makebtn_Click" />
            </div>
        </form>
</body>
</html>