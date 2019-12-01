    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-CustomerAccountInfo.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_CustomerAccountInfo" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Customer Account Information</title>
    <!--#include file="includes/header.inc"-->
</head>
   
<body>
    <form runat="server" ID="myForm">
    <!--#include file="includes/navbar-customer.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <div class="container">
        <div class="row">
            <h2>Customer Account Information</h2>
        </div>
        
        <!-- NEEDS TO PULL FROM DATABASE HERE!!!!! -->
        
        <div class="row">
            <div class="col-25">
				Email:
            </div>
            <div class="col-75">
                <asp:Label ID="emailInsert" runat="server"></asp:Label>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
				Phone Number:
            </div>
            <div class="col-75">
                <asp:Label ID="phoneNumInsert" runat="server"></asp:Label>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                 <asp:Label ID="emaillabel" text="New Email:" runat="server"></asp:Label>
            </div>
            <div class="col-75 right">
                <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <asp:Label ID="phonelabel" Text="New Number:" runat="server"></asp:Label>
            </div>
            <div class="col-75 right">
                <asp:TextBox ID="numbertxt" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                
            </div>
            <div class="col-75 text-right">
                <asp:Button ID="Editbtn2" runat="server" Text="Edit" OnClick="Editbtn2_Click" />
            </div>
        </div>
    </div>
    
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>