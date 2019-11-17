<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-Login.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Login</h2>
            
            <p>Enter your email and password to login.</p>

            <p>
                <asp:Label ID="emailLbl" runat="server" Text="Email: "></asp:Label> </p>
                <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>

            <p>
                <asp:Label ID="passwordLbl" runat="server" Text="Password: "></asp:Label> </p>
                <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox>
            
            <p> <asp:CheckBox ID="rememberCbx" runat="server" Text="Remember me!" /> </p>
            
            <p>
                <asp:Button ID="submitBtn" runat="server" Text="Submit" /> </p>
            
            <p>Don't have an account? Sign up as a customer or restaurant by clicking one of the buttons below!</p>

            <p>
                <asp:Button ID="customerBtn" runat="server" Text="Customer" />            
                <asp:Button ID="restaurantBtn" runat="server" Text="Restaurant" /> </p>

        </div>
    </form>
</body>
</html>
