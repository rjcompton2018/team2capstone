﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-CustomerAccountInfo.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_CustomerAccountInfo" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Customer Account Information</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <!--#include file="includes/navbar-customer.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <div class="container">
        <div class="row">
            <h2>Customer Account Information</h2>
        </div>
        
        <!-- NEEDS TO PULL FROM DATABASE HERE!!!!! -->
        
        <div class="row">
            <div class="col-25">
				Email:
            </div>
            <div class="col-75">
                <!-- INPUT -->
            </div>
        </div>

        <div class="row">
            <div class="col-25">
				Password:
            </div>
            <div class="col-75">
                <!-- INPUT -->
            </div>
        </div>

        <div class="row">
            <div class="col-25">
				Phone Number:
            </div>
            <div class="col-75">
                <!-- INPUT -->
            </div>
        </div>

        <div class="row">
            <div class="col-25">
            </div>
            <div class="col-75 right">
                <asp:Button ID="editBtn" runat="server" Text="Edit Account" />
            </div>
        </div>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-4" align="center">
                    <asp:Button ID="makeBtn" runat="server" Text="Make Reservation" />
                </div>
                <div class="col-4" align="center">
                    <asp:Button ID="currentBtn" runat="server" Text="View Current Reservation" />
                </div>
            </div>
        </div>

    <!--#include file="includes/footer.inc"-->
</body>
</html>