<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-TableConfiguration.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_TableConfiguration" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Restaurant Table Configuration</title>
    <!--#include file="includes/header.inc"-->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"> 
    </script>

    <style>
        .oval {
            height: 100px;
            width: 200px;
            background-color: #555;
            border-radius: 50%;
        }

        .table {
            background: lightblue;
        }

        .textBox {
            height: 25px;
            width: 30px;
            position: relative;
            top: 10%;
            left: 5%;
        }
    </style>

    <script lang="javascript" type="text/javascript">

</script>

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
                                <asp:PlaceHolder ID="placeholder" runat="server"></asp:PlaceHolder>

                                <asp:Button ID="btn" Text="display" runat="server" OnClick="displaySomething" />
                                <asp:Label ID="lbl" Text="hi" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="coordinates" runat="server" />
    </form>


    <script type="text/javascript">
        $(function () {
            $('.table').draggable({
                start: function (event, ui) {
                    $(event.target).css("opacity", "0.6");
                },
                stop: function (event, ui) {
                    $(event.target).css("opacity", "1.0");
                    var position = $(event.target).position();
                    var positionArray = [];
                }
            });

            $('#form1').submit(function () {
                tableCount = $('.table').length;

                positions = [];

                for (var i = 0; i < tableCount; i++) {
                    position = $('#myDiv' + i).position();
                    positions[i] = [position.top, position.left];
                    console.log(positions[i]);
                }
                $('#coordinates').val(positions);
            });
        });
    </script>
    <!--#include file="includes/footer.inc"-->
</body>
</html>
