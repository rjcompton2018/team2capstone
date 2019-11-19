<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-MakeReservation.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_MakeReservation" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Make Reservations</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <!--#include file="includes/navbar-customer.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->
    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <h2>Make a Reservation</h2>
            </div>
            <div class="row">
                Select a restaurant from the menu, enter your party's information, then click "Make Reservation" to enter the queue!
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="restaurantsLbl" runat="server" Text="Restaurants"></asp:Label>
                </div>
                <div class="col-75">
                    <asp:DropDownList ID="restaurantDdl" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="numberLbl" runat="server" Text="Number in Party: "></asp:Label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="numberTxt" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="occasionLbl" runat="server" Text="Occasion: "></asp:Label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="occasionTxt" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="nameLbl" runat="server" Text="Name: "></asp:Label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="phoneLbl" runat="server" Text="Phone Number: "></asp:Label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="phoneTxt" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-25">

                </div>
                <div class="col-75 right">
                    <asp:Button ID="makeBtn" runat="server" Text="Make Reservation" />
                </div>
            </div>

        </div>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>