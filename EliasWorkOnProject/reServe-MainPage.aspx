<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-MainPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_MainPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Your personal restaurant wait time calculator!</title>
    <!--#include file="includes/header.inc"-->
</head>
<body>
    <form runat="server">
        <!--#include file="includes/navbar-main.inc"-->

        <!--#include file="includes/imagebar.inc"-->

        <!-- Page content -->
        <div class="row">
            <div id="rs-about" class="col">
                <p>
                    The worst aspect of visiting a restaurant is waiting for a seat — but that problem can be remedied with engineering and hard work. Over the course of this semester, we developed an application that will allow restaurants to manage their seating areas, allow customers to reserve seats, and notify them when it is ready for their arrival. We are going to decimate the amount of time customers must wait for their table, while making this improvement simple for the restaurant to manage.
                </p>
            </div>
        </div>

        <div id="rs-signups" class="row justify-content-center">
            <div class="col-2">
                <%--<a href="#" id="rs-main-signupbtn" class="btn btn-info" role="button" onClick="signUpRestaurant">Restaurant Sign Up</a>--%>
                <asp:Button ID="restaurantSignUp" class="btn btn-info" runat="server" Text="Restaurant Sign Up" onClick="signUpRestaurant"/>
            </div>
            <div class="col-2">
                <%--<a href="#" id="rs-main-signupbtn" class="btn btn-info" role="button" onClick="signUpCustomer">Customer Sign Up</a>--%>
                <asp:Button ID="customerSignUp" class="btn btn-info" runat="server" Text="Customer Sign Up" OnClick="signUpCustomer" />
            </div>
        </div>
    </form>

    <!--#include file="includes/footer.inc"-->
</body>
</html>