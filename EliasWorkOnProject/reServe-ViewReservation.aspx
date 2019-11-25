<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-ViewReservation.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_ViewReservation" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - View Reservations</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <form ID="myForm" runat="server">
    <!--#include file="includes/navbar-customer.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <div class="container">
        <div class="row">
            <h2>View Reservations</h2>
        </div>

				Restaurant:
				<p></p>
                <p></p>
				Number of People:  
				<p></p>
                <p></p>
				Occasion:
				<p></p>
                <p></p>
				Name:
				<p></p>
                <p></p>
                Reservation Made At:
                <p></p>
                <p></p>
                Phone Number:
                <p></p>
                <p></p>
                <p></p>
                <p></p>
                
                <asp:Button ID="editBtn" runat="server" Text="Edit" />
                <asp:Button ID="removeBtn" runat="server" Text="Cancel" />

				<p></p>
                <p></p>
    </div>

    <!--#include file="includes/footer.inc"-->
        </form>
</body>
</html>