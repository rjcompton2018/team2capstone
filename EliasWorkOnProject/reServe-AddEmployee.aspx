<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-AddEmployee.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_AddEmployee" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Add Employee</title>
    <!--#include file="includes/header.inc"-->
</head>
<body>
    <!--#include file="includes/navbar-restaurant.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->
    <div class="container">
        <div class="row">
            <h2>Add Employee Account</h2>
        </div>
        
        <form id="form1" runat="server">
        
        <div class="row">
            <div class="col-25">
                <asp:Label ID="nameLbl" runat="server" Text="Full Name: "></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="emailLbl" runat="server" Text="Email: "></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="passwordLbl" runat="server" Text="Password: "></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="titleLbl" runat="server" Text="Title: "></asp:Label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="titleTxt" runat="server"></asp:TextBox>
            </div>
        </div>

         <div class="row">
            <div class="col-25">
            </div>
            <div class="col-75 right">
                <asp:Button ID="createBtn" runat="server" Text="Create Employee" />
            </div>
        </div>
        </form>
    </div>
    

    <!--#include file="includes/footer.inc"-->
</body>
</html>