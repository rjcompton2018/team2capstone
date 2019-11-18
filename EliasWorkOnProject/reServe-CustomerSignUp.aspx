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

    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <div class="menu">
                    <p>
                        <h2>Customer Sign Up</h2>
                    </p>

                    <!--The form asks for a user's name and phone nubmer and number of people-->
                    <form id="form" method="POST" runat="server">

                        <p>
                            Email:
                            <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
                        </p>

                        <p>
                            Password:
                            <asp:TextBox ID="Passwordtxt" type="password" runat="server"></asp:TextBox>
                        </p>

                        <p>
                            Repeat Password:
                            <asp:TextBox ID="rePasswordtxt" type="password" runat="server"></asp:TextBox>
                        </p>

                        <p>
                            Phone Number:
                            <asp:TextBox ID="phoneNumtxt" runat="server"></asp:TextBox>
                        </p>

                        <p>
                            <asp:Label Style="color: red" ID="errorlbl" runat="server" Text=""></asp:Label>


                            <asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
                        </p>
                    </form>
                </div>

            </div>
        </div>
    </div>
    </div>


    <!--#include file="includes/footer.inc"-->
</body>
</html>