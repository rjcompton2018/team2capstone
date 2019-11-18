<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-MainPage.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_MainPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>ReServe - Your personal restaurant wait time calculator!</title>
    <!--#include file="includes/header.inc"-->
</head>
<body>
    <!--#include file="includes/navbar-main.inc"-->

    <!--#include file="includes/imagebar.inc"-->

    <!-- Page content -->
    <div class="row">
        <div id="rs-about" class="col">
            <p>Introduction:</p>
            <p>
                The worst aspect of visiting a restaurant is waiting for a seat — but that problem can be remedied with engineering and hard work. Over the course of this semester, we developed an application that will allow restaurants to manage their seating areas, allow customers to reserve seats, and notify them when it is ready for their arrival. We are going to decimate the amount of time customers must wait for their table, while making this improvement simple for the restaurant to manage.
            </p>
        </div>
    </div>

    <div class="row">
        <div id="rs-main-buttons" class="col">
            <p>
                <a href="#" id="rs-main-rsign" class="btn btn-info btn-outline-dark" role="button">Restaurant Sign Up</a>
                <a href="#" id="rs-main-csign" class="btn btn-info btn-outline-dark" role="button">Customer Sign Up</a>
                <a href="#" id="rs-main-login" class="btn btn-info btn-outline-dark" role="button">Login</a>
            </p>
        </div>
    </div>

    <!--#include file="includes/footer.inc"-->
</body>
</html>