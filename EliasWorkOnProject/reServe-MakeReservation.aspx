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
                    <asp:Label ID="restaurantsLbl" runat="server" Text="Restaurant:"></asp:Label>
                </div>
                <div class="col-75">
                    <asp:DropDownList ID="restaurantDdl" runat="server" AutoPostBack="true" OnSelectedIndexChanged="selectionChanged">
                        <Items>
                            <asp:ListItem Text="<Select Restaurant>" Value=" "></asp:ListItem>
                        </Items>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                </div>
                <div class="col-75">
                    <asp:Label ID="restInfo" runat="server"></asp:Label><br />
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                </div>
                <div class="col-75">
                    <asp:Label ID="waitlbl" runat="server" Text=""></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="partyNum" runat="server" Text="Number in Party: "></asp:Label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="partyNumTxt" runat="server"></asp:TextBox>
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
                    <asp:Label ID="DateLbl" runat="server" Text="Date"></asp:Label>
                </div>
                <div class="col-75">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Label ID="TimeLbl" runat="server" Text="Time"></asp:Label>
                </div>
                <div class="col-75 right">
                    <asp:DropDownList ID="timeDdl" runat="server">
                        <asp:ListItem>12:00</asp:ListItem>
                        <asp:ListItem>12:30</asp:ListItem>
                        <asp:ListItem>1:00</asp:ListItem>
                        <asp:ListItem>1:30</asp:ListItem>
                        <asp:ListItem>2:00</asp:ListItem>
                        <asp:ListItem>2:30</asp:ListItem>
                        <asp:ListItem>3:00</asp:ListItem>
                        <asp:ListItem>3:30</asp:ListItem>
                        <asp:ListItem>4:00</asp:ListItem>
                        <asp:ListItem>4:30</asp:ListItem>
                        <asp:ListItem>5:00</asp:ListItem>
                        <asp:ListItem>5:30</asp:ListItem>
                        <asp:ListItem>6:00</asp:ListItem>
                        <asp:ListItem>6:30</asp:ListItem>
                        <asp:ListItem>7:30</asp:ListItem>
                        <asp:ListItem>8:00</asp:ListItem>
                        <asp:ListItem>8:30</asp:ListItem>
                        <asp:ListItem>9:00</asp:ListItem>
                        <asp:ListItem>9:30</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>10:30</asp:ListItem> 
                    </asp:DropDownList>
                </div>
            </div>

        <div class="row" style="margin-bottom: 50px;">
            <div class="col-25">
            </div>
            <div class="col-75 text-right">
                <asp:Button ID="makeBtn" runat="server" Text="Make Reservation" OnClick="makeBtn_Click" />
            </div>
        </div>

    </div>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>