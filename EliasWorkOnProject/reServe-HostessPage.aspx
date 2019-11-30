<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-HostessPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_HostessPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Hostess Page</title>
    <!--#include file="includes/header.inc"-->

    <style>
        .oval {
            height: 100px;
            width: 200px;
            background-color: #555;
            border-radius: 50%;
        }

        .table {
            background: lightblue;
        }

        .textBox {
            height: 25px;
            width: 30px;
            position: relative;
            top: 10%;
            left: 5%;
        }

    </style>
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
                <div class="col-25">
                    <asp:PlaceHolder ID="placeholder" runat="server"></asp:PlaceHolder>
                </div>
                
            </div>
            <div class="row">
                <asp:Button ID="viewBtn" runat="server" Text="View Current Reservations" />
                <asp:Button ID="makeBtn" runat="server" Text="Make a Reservation" />
                <asp:Button ID="deleteBtn" runat="server" Text="Delete a Reservation" />
            </div>
        </div>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>
