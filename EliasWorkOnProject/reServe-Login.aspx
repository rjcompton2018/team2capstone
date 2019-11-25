<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-Login.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_Login" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Login</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <!--#include file="includes/navbar-main.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h2>Login</h2>
            </div>
            <div class="row">
                Enter your email and password to login.
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
                    <br />
                    <br />
                    <asp:Label ID="errorlbl" runat="server" Text=""></asp:Label>
                    <br />
                </div>
            </div>
                        
            <div class="row">
                <div class="col-25">
                    <asp:CheckBox ID="rememberCbx" runat="server" Text="Remember me!" />
                </div>
                <div class="col-75 right">
                    <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />
                </div>
            </div>

            <div class="row">
                Don't have an account? Sign up as a customer or restaurant by clicking one of the buttons below!
            </div>

            <div class="row">
                <div class="col-25">
                    <asp:Button ID="customerBtn" runat="server" Text="Customer" onClick="customerSignUp"/>
                </div>
                <div class="col-25">
                    <asp:Button ID="restaurantBtn" runat="server" Text="Restaurant" onClick="restaurantSignUp"/>
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>