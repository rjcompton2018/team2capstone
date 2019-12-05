<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantContinuedSignUp.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_RestaurantContinuedSignUp" %>

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

        <div class="container">
            <div class="row">
                <h2>Restaurant Sign Up</h2>
            </div>

            <div class="row">
                <div style="display: inline-block; width: 250px" class="span6">
                    <asp:Label ID="capacityLbl" runat="server" Text="Capacity"></asp:Label>
                </div>
                <div class="span6">
                    <asp:TextBox ID="capacityTxt" runat="server" Height="14px"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div style="display: inline-block; width: 250px" class="span6">
                    <asp:Label ID="totalTablesLbl" runat="server" Text="Total Number of Tables"></asp:Label>
                </div>
                <div class="span6">
                    <asp:TextBox ID="totalTablesTxt" runat="server" Height="14px"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="span6">
                    <asp:CheckBox ID="boothsCbx" runat="server" /> <asp:Label ID="boothsLbl" runat="server" Text="Booths Available"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="span6">
                    <asp:CheckBox ID="barCbx" runat="server" /><asp:Label ID="barLbl" runat="server" Text="Bar"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="span6">
                    <asp:CheckBox ID="DeliveryCbx" runat="server" /><asp:Label ID="deliveryLbl" runat="server" Text="Delivery"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="span6">
                    <asp:CheckBox ID="CateringCbx" runat="server" /><asp:Label ID="cateringLbl" runat="server" Text="Catering"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="span6">
                    <asp:CheckBox ID="VeganCbx" runat="server" /><asp:Label ID="veganLbl" runat="server" Text="Vegan Options"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="span6">
                    <asp:CheckBox ID="OutdoorCbx" runat="server" /><asp:Label ID="outdoorLbl" runat="server" Text="Outdoor Seating"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="span6">
                    <asp:CheckBox ID="HandicapCbx" runat="server" /><asp:Label ID="handicapLbl" runat="server" Text="Handicap Accessible"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="span6">
                    <asp:CheckBox ID="HighChairsCbx" runat="server" /><asp:Label ID="highChairsLbl" runat="server" Text="High Chairs"></asp:Label>
                </div>
            </div>

            <div class="row footer-button">
                <div class="span6" style="display: inline-block; width: 500px">
                    <asp:Button ID="TableConfigBtn" runat="server" Text="Continue to Table Configurator" OnClick="toTableConfig" />
                    <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="toRestMainPage" />
                </div>
            </div>

        </div>

    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>