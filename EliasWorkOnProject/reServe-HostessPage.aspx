﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-HostessPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_HostessPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Hostess Page</title>
    <!--#include file="includes/header.inc"-->

    <%--    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css" rel="stylesheet" type="text/css" />--%>



    <style>
        .ui-widget {
            font-family: Verdana,Arial,sans-serif;
            font-size: .8em;
        }

        .ui-widget-content {
            background: #F9F9F9;
            border: 1px solid #466289;
            color: #222222;
        }

        .ui-dialog {
            left: 0;
            outline: 0 none;
            padding: 0 !important;
            position: absolute;
            top: 0;
        }

        #success {
            padding: 0;
            margin: 0;
        }

        .ui-dialog .ui-dialog-content {
            background: none repeat scroll 0 0 transparent;
            border: 0 none;
            overflow: auto;
            position: relative;
            padding: 0 !important;
        }

        .ui-widget-header {
            background: #627894;
            border: 0;
            color: #fff;
            font-weight: normal;
        }

        .ui-dialog .ui-dialog-titlebar {
            padding: 0.1em .5em;
            position: relative;
            font-size: 1em;
            background-color: #627894;
        }

        .oval {
            height: 80px;
            width: 100px;
            background-color: #555;
            border-radius: 10%;
        }

        .table {
            background-color: #FFF;
            color: #466289;
        }

        .textBox {
            height: 20px;
            width: 25px;
            position: relative;
            top: 20%;
            left: 45%;
        }

        .footer-button {
            position: absolute;
            right: 0;
            bottom: 35px;
        }

        .div-hide {
            position: absolute;
            top: 100px;
            width: 500px;
            height: 400px;
            border: 1px solid #000;
            background-color: #A0AEC1;
            padding: 3px;
        }
    </style>
</head>

<body>
    <!--#include file="includes/navbar-restaurant.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->

    <form id="form1" runat="server">
        <div class="container">
            <!-- Main Row Container -->
            <div class="container-fluid">
                <div class="row">
                    <h2>Hostess Page</h2>
                </div>

                <div class="row">
                    <p>Quickly manage all reservations from this page!</p>
                </div>

                <div class="row">
                    <div class="col-sm">
                        <div class="row">
                            <asp:Panel ID="panel1" runat="server" Height="500px"></asp:Panel>
                        </div>
                    </div>
                    <div class="col-sm right" style="position: relative; left: 400px;">
                        <asp:GridView ID="GridViewCustomers" runat="server"></asp:GridView>
                        <br />
                        <asp:Label ID="lblAddCust" Text="Enter Name and Party Number" runat="server"></asp:Label>
                        <br />
                        <div style="display: inline-block;">
                            <asp:TextBox ID="CustomerName" runat="server" Width="100px" Height="40px"></asp:TextBox>
                            <asp:TextBox ID="PartyNumber" runat="server" Width="50px" Height="40px"></asp:TextBox>
                            <asp:Button ID="addCustomer" Text="Add Customer" runat="server" OnClick="addNewCustomer" />
                            &nbsp;&nbsp;
                            <asp:Label ID="waitlbl" runat="server" Text=""></asp:Label>
                        </div>

                    </div>
                </div>
            </div>

            <div id="divReservation" class="div-hide" runat="server" visible="false">
                <asp:Label ID="lblPartyName" runat="server" Text="Name"></asp:Label><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:Label ID="lblPartyNum" runat="server" Text="Party Number"></asp:Label><asp:TextBox ID="txtPartyNum" runat="server"></asp:TextBox>
                <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label><asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                <asp:Label ID="lblTime" runat="server" Text="Time"></asp:Label><asp:DropDownList ID="ddlTime" runat="server">
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>12:30</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>1:30</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>2:30</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>3:30</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>4:30</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>5:30</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>6:30</asp:ListItem>
                    <asp:ListItem>7:30</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>8:30</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>9:30</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>10:30</asp:ListItem>
                </asp:DropDownList>
                <div class="row" style="position: absolute; right: 0px; bottom: 0px">
                    <asp:Button ID="Button1" Text="Make Reservation" runat="server" OnClick="makeReservation" />
                    <asp:Button ID="Button2" Text="X" runat="server" OnClick="closeMakeReservation" />
                </div>
            </div>

            <div id="divViewReservation" runat="server" class="div-hide" visible="false">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" AutoGenerateSelectButton="false" AllowPaging="false">
                    <Columns>
                        <asp:BoundField ItemStyle-Width="150px" DataField="Reservation_ID" HeaderText="Reservation_ID" />
                        <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="Name" />
                        <asp:BoundField ItemStyle-Width="150px" DataField="PartyNum" HeaderText="Party Number" />
                        <asp:BoundField ItemStyle-Width="150px" DataField="Phone_Number" HeaderText="Phone Number" />
                        <asp:BoundField ItemStyle-Width="150px" DataField="DateTime" HeaderText="Reservation Time" />
                    </Columns>
                </asp:GridView>
                <asp:Button ID="exitBtn" Text="X" runat="server" Style="position: absolute; right: 0px; bottom: 0px" OnClick="closeViewReservation" />
            </div>

            <div class="row justify-content-center" style="margin-bottom: 75px;">
                    <asp:Button ID="viewBtn" runat="server" Text="View Current Reservations" OnClick="getReservationData" />
                    <asp:Button ID="makeBtn" runat="server" Text="Make a Reservation" OnClick="viewReservationDiv" />
            </div>
        </div>
        <asp:HiddenField ID="newReservation" runat="server" />
    </form>

    <%--<script>

        $(function () {
            $(document.getElementById('viewBtn')).click(function () {
                ShowPopup($(document.getElementById('dialogViewReservation')));
                return false;
            });
            $(document.getElementById('makeBtn')).click(function () {
                ShowPopup($(document.getElementById('dialogMakeReservation')));
                return false;
            });

            //$(document.getElementById('btnSubmitReservation')).click(function () {
            //    event.preventDefault();
            //    reservationDetails = [];

            //    partyName = $('#txtName').val();
            //    partyNum = $('#txtPartyNum').val();
            //    partyPhoneNum = $('#txtPhoneNumber').val();

            //    reservationDetails = [partyName, partyNum, partyPhoneNum];

            //    $('#newReservation').val(reservationDetails);
            //    alert($('#newReservation').val());
            //});

            $(document.getElementById('btnSubmitReservation')).on("click", saveDetails);

            $(".table").click(function () {
                tableColor($(event.target));
            });
        });

        function saveDetails() {
            reservationDetails = [];

            partyName = $('#txtName').val();
            partyNum = $('#txtPartyNum').val();
            partyPhoneNum = $('#txtPhoneNumber').val();

            reservationDetails = [partyName, partyNum, partyPhoneNum];

            $('#newReservation').val(reservationDetails);

            window.localStorage.setItem("ReservationDetails", reservationDetails);
        }


        function ShowPopup(dialogToShow) {
            dialog = dialogToShow.dialog({
                title: "Reservations",
                width: 450,
                modal: true,
                close: function (event, ui) { }
            });

            $(this).dialog('open');
        }

        function tableColor(target) {
            if (target.css('background-color') === 'rgb(173, 216, 230)') {
                target.css("background-color", "lightgreen");
            } else {
                target.css("background-color", "rgb(173, 216, 230)");
            }
        }
    </script>--%>

    <!--#include file="includes/footer.inc"-->
</body>
</html>
