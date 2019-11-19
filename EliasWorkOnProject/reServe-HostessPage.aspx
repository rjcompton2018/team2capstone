<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-HostessPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_HostessPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Hostess Page</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <!--#include file="includes/navbar-restaurant.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h2>Hostess Page</h2>
            </div>
            <div class="row">
                <p>Quickly manage all reservations from this page!</p>
            </div>
            
            <div class="row">
                <asp:Button ID="viewBtn" runat="server" Text="View Current Reservations" />
            </div>
            <div class="row">
                <asp:Button ID="makeBtn" runat="server" Text="Make a Reservation" />
            </div>
            <div class="row">
                <asp:Button ID="deleteBtn" runat="server" Text="Delete a Reservation" />
            </div> 
        </div>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>