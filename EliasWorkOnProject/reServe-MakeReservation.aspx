<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-MakeReservation.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_MakeReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Make a Reservation</h2>
            <p>Select a restaurant from the menu, enter your party's information, then click "Make Reservation" to enter the queue!</p>

            <p>
                <asp:Label ID="restaurantsLbl" runat="server" Text="Restaurants"></asp:Label> </p>

            <p>
                <asp:DropDownList ID="restaurantDdl" runat="server"></asp:DropDownList></p>

            <p>
                <asp:Label ID="numberLbl" runat="server" Text="Number in Party: "></asp:Label> </p>
                
                <p>  
                    <asp:TextBox ID="numberTxt" runat="server"></asp:TextBox> </p>

            <p>
                <asp:Label ID="occasionLbl" runat="server" Text="Occasion: "></asp:Label> </p>
                
                <p>  
                    <asp:TextBox ID="occasionTxt" runat="server"></asp:TextBox> </p>

            <p>
                <asp:Label ID="nameLbl" runat="server" Text="Name: "></asp:Label> </p>
                
                <p>  
                    <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox> </p>

            <p>
                <asp:Label ID="phoneLbl" runat="server" Text="Phone Number: "></asp:Label> </p>
                
                <p>  
                    <asp:TextBox ID="phoneTxt" runat="server"></asp:TextBox> </p>

            <p><asp:Button ID="makeBtn" runat="server" Text="Make Reservation" /> </p>

        </div>
    </form>
</body>
</html>
