<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-HostessPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_HostessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Hostess Page</h2>
            <p>Quickly manage all reservations from this page!</p>

            <p>
                <asp:Button ID="viewBtn" runat="server" Text="View Current Reservations" /> </p>
            <p>
                <asp:Button ID="makeBtn" runat="server" Text="Make a Reservation" /> </p>
            <p>
                <asp:Button ID="deleteBtn" runat="server" Text="Delete a Reservation" /> </p>

        </div>
    </form>
</body>
</html>
