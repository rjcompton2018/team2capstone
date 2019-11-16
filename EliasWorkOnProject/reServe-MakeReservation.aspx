<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-MakeReservation.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_MakeReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Ready to reserve your seat?</h2>

            <p>Select a restaurant from the list, enter your info, and click Make Reservation. It's as simple as that!</p>

            <p> <asp:ListBox ID="restaurantLbx" runat="server"></asp:ListBox> </p>

            <p>
                <asp:Label ID="numberOfPeopleLbl" runat="server" Text="Number of People: "></asp:Label>
                <asp:TextBox ID="numberOfPeopleTxt" runat="server"></asp:TextBox> </p>

            <p>
                <asp:Label ID="specialInformationLbl" runat="server" Text="Special Information: "></asp:Label>
                <asp:TextBox ID="specialInformationTxt" runat="server"></asp:TextBox> </p>

            <p>
                <asp:Label ID="nameLbl" runat="server" Text="Name: "></asp:Label>
                <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox> </p>

            <p> <asp:Button ID="reserveBtn" runat="server" Text="Make Reservation" /> </p>
                                                  
            </div>
    </form>
</body>
</html>
