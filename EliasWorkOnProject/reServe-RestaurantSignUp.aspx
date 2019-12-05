<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantSignUp.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_RestaurantSignUp" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Restaurant Main Page</title>
    <!--#include file="includes/header.inc"-->

    <style>
        .footer-button {
            position: absolute;
            right: 0;
            bottom: 35px;
        }
    </style>
</head>

<body>
    <!--#include file="includes/navbar-main.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <form id="form1" runat="server">

        <div id="rSignUpPg" class="container">
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
                    <asp:Label ID="repeatPassword" runat="server" Text="Repeat Password"></asp:Label>
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
                    <asp:TextBox ID="DescriptionEntry" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="RestaurantHoursLbl" runat="server" Text="Hours"></asp:Label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="RestaurantHoursEntrytxt" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="RestaurantTypeofFoodlbl" runat="server" Text="Type of Food"></asp:Label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="RestaurantTypeofFoodEntrytxt" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row footer-button">
                <div class="col-25">
                    <asp:Label Style="color: red" ID="error_Lbl" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-75 right">
                    <div class="span6" style="display: inline-block; width: 500px">
                        <asp:Button ID="NextSignUpBtn" runat="server" Text="Next" OnClick="toContinuedSignUp" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>
