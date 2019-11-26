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
                <br />
                
                
            </div>
            <div class="col-75 right">
                <asp:Label ID="emaillabel" text="New Email:" runat="server"></asp:Label>
                &nbsp;
                <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
              &nbsp;
              <asp:Label ID="phonelabel" text="New Number:" runat="server"></asp:Label>
                &nbsp;<asp:TextBox ID="numbertxt" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Editbtn2" runat="server" Text="Edit" OnClick="Editbtn2_Click" />
            </div>

        </div>

        <div class="container">
            <div class="row justify-content-center">
                
                    <asp:Button ID="makeBtn" runat="server" Text="Make Reservation" OnClick="makeBtn_Click" />
              
                
                  &nbsp;<asp:Button ID="editBtn" runat="server" Text="Edit Account" OnClick="editBtn_Click1" />
                
                
                    &nbsp;<asp:Button ID="currentBtn" runat="server" Text="View Current Reservation" OnClick="currentBtn_Click" />
                
            </div>
        </div>
        </div>
    <!--#include file="includes/footer.inc"-->
        </form>
</body>
</html>