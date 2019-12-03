<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-HostessPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_HostessPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Hostess Page</title>
    <!--#include file="includes/header.inc"-->

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        $(function () {
            $(document.getElementById('viewBtn')).click(function () {
                ShowPopup($(document.getElementById('dialogViewReservation')));
                return false;
            });
            $(document.getElementById('makeBtn')).click(function () {
                ShowPopup($(document.getElementById('dialogMakeReservation')));
                return false;
            });
            $(document.getElementById('btnSubmitReservation')).click(function () {
                reservationDetails = [];

                partyName = $('#txtName').val();
                partyNum = $('#txtPartyNum').val();
                partyPhoneNum = $('#txtPhoneNum').val();

                //console.log(partyName);

                reservationDetails[0] = partyName;
                reservationDetails[1] = partyNum;
                reservationDetails[2] = partyPhoneNum;
                //reservationDetails = [partyName, partyNum, partyPhoneNum];

                //console.log(reservationDetails);

                $('#newReservation').val(reservationDetails);
            });
        });


        function ShowPopup(dialogToShow) {
            dialog = dialogToShow.dialog({
                title: "Reservations",
                width: 450,
                modal: true,
                close: function (event, ui) { }
            });

            //$(".selector").on("dialogclose", function () {
                
            //});

            $(this).dialog('open');
        }
    </script>

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
            border-radius: 50%;
        }

        .table {
            background: lightblue;
        }

        .textBox {
            height: 20px;
            width: 25px;
            position: relative;
            top: -20%;
            left:32%;
        }

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

    <form id="form1" runat="server">
        <div class="container">
            <!-- Main Row Container -->
            <div class="container" style="margin-top: 30px">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="menu">
                            <div class="container-fluid">

                                <!-- DIALOGS -->
                                <div id="dialogMakeReservation" style="display: none">
                                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
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
                                    <asp:Button ID="btnSubmitReservation" Text="Make Reservation" runat="server" OnClick="makeReservation" UseSubmitBehavior="false" />
                                </div>

                                <div id="dialogViewReservation" style="display: none">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" AutoGenerateSelectButton="false" AllowPaging="false" OnRowDeleting="gridView_RowDeleting">
                                        <Columns>
                                            <asp:BoundField ItemStyle-Width="150px" DataField="Reservation_ID" HeaderText="Reservation_ID" />
                                            <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="Name" />
                                            <asp:BoundField ItemStyle-Width="150px" DataField="PartyNum" HeaderText="Party Number" />
                                            <asp:BoundField ItemStyle-Width="150px" DataField="Phone_Number" HeaderText="Phone Number" />
                                            <asp:BoundField ItemStyle-Width="150px" DataField="DateTime" HeaderText="Reservation Time" />
                                        </Columns>
                                    </asp:GridView>
                                </div>



                                <!-- PAGE CONTENT -->
                                <div class="container">

                                    <div class="row">
                                        <h2>Hostess Page</h2>
                                    </div>

                                    <div class="row">
                                        <p>Quickly manage all reservations from this page!</p>
                                    </div>
                                    
                                </div>
                                <asp:HiddenField ID="newReservation" runat="server" />
                            </div>
                            
                        </div>
                        <div class="row" style="position: absolute; top: 120px;">
                                <asp:Panel ID="panel1" runat="server" Height="500px"></asp:Panel>
                            </div>
                    </div>

                    <div class="row footer-button">
                        <div class="span6" style="display: inline-block; width: 1000px">
                            <asp:Button ID="viewBtn" runat="server" Text="View Current Reservations" onClick="pullReservations"/>
                            <asp:Button ID="makeBtn" runat="server" Text="Make a Reservation"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>
