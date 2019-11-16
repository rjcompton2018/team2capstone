<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-Login.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="loginFrm" runat="server">
        <div>

        <h2>Login to your account!</h2>

            <p> <asp:Label ID="emailLbl" runat="server" Text="Email: "></asp:Label> <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox> </p>

            <p> <asp:Label ID="passwordLbl" runat="server" Text="Password: "></asp:Label> <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox> </p>
            
            <p> <asp:CheckBox ID="rememberCbx" runat="server" Text="Remember me!" /> </p> 
            
            <p> <asp:Button ID="submitBtn" runat="server" Text="Submit" /> </p>

            <p> <asp:Label ID="signUpLbl" runat="server" Text="Don't have an account? Sign up as a restaurant or customer below!"></asp:Label> </p>

            <p> <asp:Button ID="toCustomerSignUpBtn" runat="server" Text="Customer" /> <asp:Button ID="toRestaurantSignUpBtn" runat="server" Text="Restaurant" /> </p>

        </div>
    </form>
</body>
</html>
