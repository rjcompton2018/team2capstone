<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantAccountInfo.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_RestaurantAccountInfo" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Restaurant Account Information</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <!--#include file="includes/navbar-restaurant.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <h2>Restaurant Account Information</h2>
            </div>

            <!-- NEEDS TO PULL FROM DATABASE HERE!!!!! -->

            <div class="row">
                <div class="col-25">
                    Admin Email:
                </div>
                <div class="col-75">
                    <!-- STUFF -->
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    Restaurant Name:
                </div>
                <div class="col-75">
                    <!-- STUFF -->
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    Address:
                </div>
                <div class="col-75">
                    <!-- STUFF -->
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    Phone Number:
                </div>
                <div class="col-75">
                    <!-- STUFF -->
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    Hours:
                </div>
                <div class="col-75">
                    <!-- STUFF -->
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                </div>
                <div class="col-75 right">
                    <asp:Button ID="editBtn" runat="server" Text="Edit" OnClick="editBtn_Click" />
                </div>
            </div>
        </div>

    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>
