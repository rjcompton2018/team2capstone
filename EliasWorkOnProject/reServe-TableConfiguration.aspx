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
                                <%--<asp:Button ID="submitBtn" runat="server" OnClick="position" />--%>
                                <asp:PlaceHolder ID="placeholder" runat="server"></asp:PlaceHolder>
                                <asp:HiddenField ID="positionHdnTop" runat="server" ClientIDMode="Static" />
                                <asp:HiddenField ID="positionHdnLeft" runat="server" ClientIDMode="Static" />

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
                                                //String[] positions = new String[] { };
                                                for (var i = 0; i < 150; i++) {
                                                    positionArray[i] = position.top + " " + position.left;
                                                    $("#positionHdnTop").val(positionArray[i]);
                                                }
                                                
                                            }
                                        });
                                    });
                                </script>

                                <asp:Button ID="btn" Text="display" runat="server" OnClick="displaySomething" />
                                <asp:Label ID="lbl" Text="hi" runat="server"></asp:Label>


                                <!-- Column width 25% -->
                                <%--<div class="row">
                                    <div class="col">
                                        <p>Table 1</p>
                                        <asp:TextBox ID="waittimetxt1" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton1" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 2</p>
                                        <asp:TextBox ID="waittimetxt2" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton2" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 3</p>
                                        <asp:TextBox ID="waittimetxt3" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton3" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 4</p>
                                        <asp:TextBox ID="waittimetxt4" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton4" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                </div>
                                <p></p>
                                <!-- Column width 25% -->
                                <div class="row">
                                    <div class="col">
                                        <p>Table 5</p>
                                        <asp:TextBox ID="waittimetxt5" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton5" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 6</p>
                                        <asp:TextBox ID="waittimetxt6" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton6" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 7</p>
                                        <asp:TextBox ID="waittimetxt7" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton7" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 8</p>
                                        <asp:TextBox ID="waittimetxt8" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton8" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                </div>
                                <p></p>
                                <!-- Column width 25% -->
                                <div class="row">
                                    <div class="col">
                                        <p>Table 9</p>
                                        <asp:TextBox ID="waittimetxt9" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton9" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 10</p>
                                        <asp:TextBox ID="waittimetxt10" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton10" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 11</p>
                                        <asp:TextBox ID="waittimetxt11" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton11" Text="" runat="server" />
                                        <p></p>
                                        <p></p>
                                        <div class="div1"></div>
                                        <p></p>
                                    </div>
                                    <div class="col">
                                        <p>Table 12</p>
                                        <asp:TextBox ID="waittimetxt12" runat="server"></asp:TextBox>
                                        <asp:RadioButton ID="RadioButton12" Text="" runat="server" />
                                        <p></p>
                                        <asp:Button ID="Button1" runat="server" Text="Submit"></asp:Button>
                                        <div class="div1"></div>
                                        <p></p>

                                    </div>


                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <p></p>
        <p></p>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>
