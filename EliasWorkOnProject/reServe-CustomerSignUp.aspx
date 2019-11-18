<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-CustomerSignUp.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_CustomerSignUp" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Customer Sign Up</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <!--#include file="includes/navbar-main.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <!--The form asks for a user's name and phone nubmer and number of people-->
    <div class="container">
        <div class="row">
            <h2>Customer Sign Up</h2>
        </div>

        <form id="form" method="POST" runat="server">

        <div class="row">
            <div class="col-25">
                <label>E-mail Address:</label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label>Password:</label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="Passwordtxt" type="password" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label>Repeat Password:</label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="rePasswordtxt" type="password" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label>Phone Number:</label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="phoneNumtxt" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label Style="color: red" ID="errorlbl" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-75 right">
                <asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
            </div>
        </div>
                    
        </form>
    </div>

    <!--#include file="includes/footer.inc"-->
</body>
</html>