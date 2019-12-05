<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantMainPage.aspx.cs" Inherits="ReServeAPI_v2._0.RestaurantMainPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Restaurant Main Page</title>
    <!--#include file="includes/header.inc"-->
    <style>
        .footer-button {
            position: absolute;
            right: 0;
            bottom: 35px;
        }
    </style>
</head>

<body>
    <!--#include file="includes/navbar-restaurant.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <div class="container">
        <h2>Restaurant Details</h2>
    </div>

    <form id="MyForm" method="post" runat="server">
    <div class="row justify-content-center">

        <div class="col-50 text-center footer-button">
            <asp:Button ID="Edit" runat="server" Text="Edit Info" Width="158px" OnClick="Edit_Click" />
            <asp:Button ID="addEmployeeBtn" runat="server" Text="Add Employee" Width="158px" OnClick="addEmployee" />
            <asp:Button ID="listEmployeesBtn" runat="server" Text="Employee List" Width="158px" OnClick="listEmployee" />
        </div>

        <div class="col">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                            OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
                <Columns>
                    <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="Name" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="FoodStyle" HeaderText="FoodStyle" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Hours" HeaderText="Hours" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Capacity" HeaderText="Capacity" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="TotalTables" HeaderText="TotalTables" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Chairs" HeaderText="Chairs" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Booths" HeaderText="Booths" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Bar" HeaderText="Bar" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Delivery" HeaderText="Delivery" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Address" HeaderText="Address" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="PhoneNumber" HeaderText="PhoneNumber" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="DistanceAway" HeaderText="DistanceAway" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="RatingPlaceHolder" HeaderText="RatingPlaceHolder" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Description" HeaderText="Description" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="PriceRange" HeaderText="PriceRange" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Vegan" HeaderText="Vegan" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Catering" HeaderText="Catering" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Outdoor" HeaderText="Outdoor" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Ramps" HeaderText="Ramps" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="Children" HeaderText="Children" />
                  </Columns>
            </asp:GridView>
        </div>
    </div>
    
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>