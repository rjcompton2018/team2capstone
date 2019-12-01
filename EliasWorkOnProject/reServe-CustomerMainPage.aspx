<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-CustomerMainPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_CustomerMainPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Customer Main Page</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <form runat="server" id="myForm">
        <!--#include file="includes/navbar-customer.inc"-->

        <!--#include file="includes/imagebar.inc"-->

        <!-- Page content -->

        <div class="container">
            <h2>YOU ARE A CUSTOMER</h2>
            <p>This is what a customer will see on the main page, after they login.</p>
        </div>

        <div class="container" id="Buttons" style="margin-bottom: 50px;">
            <asp:Button ID="accbtn" runat="server" Text="Account Info" OnClick="accbtn_Click" />
            <asp:Button ID="viewbtn" runat="server" Text="View Reservation" OnClick="viewbtn_Click" />
            <asp:Button ID="makebtn" runat="server" Text="Make Reservation" OnClick="makebtn_Click" />
        </div>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>