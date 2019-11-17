<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-AddEmployee.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Add Employee Account</h2>
            <p>
                <asp:Label ID="nameLbl" runat="server" Text="Full Name: "></asp:Label>
                <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox> </p>

            <p>
                <asp:Label ID="emailLbl" runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox> </p>

            <p>
                <asp:Label ID="passwordLbl" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox> </p>

            <p>
                <asp:Label ID="titleLbl" runat="server" Text="Title: "></asp:Label>
                <asp:TextBox ID="titleTxt" runat="server"></asp:TextBox> </p>

            <asp:Button ID="createBtn" runat="server" Text="Create Employee" />

        </div>
    </form>
</body>
</html>
