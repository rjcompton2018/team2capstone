﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-ViewReservation.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_ViewReservation" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - View Reservations</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <form id="myForm" runat="server">
        <!--#include file="includes/navbar-customer.inc"-->

        <!--#include file="includes/imagebar.inc"-->

        <!-- Page content -->

        <div class="container">
            <div class="row">
                <h2>View Reservations</h2>
            </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" AutoGenerateSelectButton="false" AllowPaging="false">
                <Columns>
                    <asp:BoundField ItemStyle-Width="150px" DataField="Restaurant_ID" HeaderText="Restaurant" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="DateTime" HeaderText="Reservation Time" />
                </Columns>
            </asp:GridView>

        </div>

        <!--#include file="includes/footer.inc"-->
    </form>
</body>
</html>
