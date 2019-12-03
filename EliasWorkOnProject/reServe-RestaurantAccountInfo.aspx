<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantAccountInfo.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_RestaurantAccountInfo" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Restaurant Account Information</title>
    <!--#include file="includes/header.inc"-->
</head>

<body>
    <!--#include file="includes/navbar-restaurant.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <h2>Restaurant Account Information</h2>
            </div>

            <!-- NEEDS TO PULL FROM DATABASE HERE!!!!! -->

            <%--<div class="container">--%>
                <div class="row">
                    <div class="col-sm">
                        <div class="row">
                            <div class="col-50">
                                Admin Email:
                            </div>
                            <div class="col-50">
                                <asp:Label ID="adminEmailDisp" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-50">
                                Restaurant Name:
                            </div>
                            <div class="col-50">
                                <asp:Label ID="restNameDisp" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-50">
                                Address:
                            </div>
                            <div class="col-50">
                                <asp:Label ID="restAddressDisp" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-50">
                                Phone Number:
                            </div>
                            <div class="col-50">
                                <asp:Label ID="restPhoneNumberDisp" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-50">
                                Hours:
                            </div>
                            <div class="col-50">
                                <asp:Label ID="restHoursDisp" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm">
                        <div class="row">
                            <div style="display: inline-block; width: 250px" class="span6">
                                <asp:Label ID="capacityLbl" runat="server" Text="Capacity"></asp:Label>
                            </div>
                            <div class="span6">
                                <asp:Label ID="capacityDisp" runat="server" Height="14px"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div style="display: inline-block; width: 250px" class="span6">
                                <asp:Label ID="totalTablesLbl" runat="server" Text="Total Number of Tables"></asp:Label>
                            </div>
                            <div class="span6">
                                <asp:Label ID="totalTablesDisp" runat="server" Height="14px"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="span6">
                                <asp:CheckBox ID="boothsCbx" runat="server" />
                                <asp:Label ID="boothsLbl" runat="server" Text="Booths Available" ></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="span6">
                                <asp:CheckBox ID="barCbx" runat="server" /><asp:Label ID="barLbl" runat="server" Text="Bar" Enabled="false"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="span6">
                                <asp:CheckBox ID="DeliveryCbx" runat="server" /><asp:Label ID="deliveryLbl" runat="server" Text="Delivery"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="span6">
                                <asp:CheckBox ID="CateringCbx" runat="server" /><asp:Label ID="cateringLbl" runat="server" Text="Catering"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="span6">
                                <asp:CheckBox ID="VeganCbx" runat="server" /><asp:Label ID="veganLbl" runat="server" Text="Vegan Options"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="span6">
                                <asp:CheckBox ID="OutdoorCbx" runat="server" /><asp:Label ID="outdoorLbl" runat="server" Text="Outdoor Seating"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="span6">
                                <asp:CheckBox ID="HandicapCbx" runat="server" /><asp:Label ID="handicapLbl" runat="server" Text="Handicap Accessible"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="span6">
                                <asp:CheckBox ID="HighChairsCbx" runat="server" /><asp:Label ID="highChairsLbl" runat="server" Text="High Chairs"></asp:Label>
                            </div>
                        </div>

                        

                    </div>
                </div>
            </div>
        <%--</div>--%>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>
