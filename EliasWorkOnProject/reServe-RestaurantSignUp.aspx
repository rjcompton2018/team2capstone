<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantSignUp.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_RestaurantSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <asp:Label ID="restaurantSignUpTitle" runat="server" Text="Restaurant SignUp"></asp:Label>

        </div>
        <br />
        <div>
            <asp:Label ID="adminEmailLbl" runat="server" Text="Admin Email"></asp:Label>

            <div>
                <asp:TextBox ID="adminEmailTxt" runat="server" ></asp:TextBox></div>
            <br />
        </div>
        <div>
            <asp:Label ID="adminPassLbl" runat="server" Text="Password"></asp:Label>

            <div>
                <asp:TextBox ID="adminPassTxt" runat="server"></asp:TextBox></div>
            <br />
            <div>
                <asp:Label ID="repeatPassLbl" runat="server" Text="Repeat Password"></asp:Label>

                <div>
                    <asp:TextBox ID="adminRepeatPassTxt" runat="server"></asp:TextBox></div>
                <br />
                <div>
                    <asp:Label ID="restNameLbl" runat="server" Text="Restaurant Name"></asp:Label>
                    <asp:TextBox ID="restNameTxt" runat="server" Width="335px"></asp:TextBox>
                    <div>
                        <asp:Label ID="restAddressLbl" runat="server" Text="Address"></asp:Label>


                        <asp:TextBox ID="restAddressTxt" runat="server"></asp:TextBox>
                        <div>
                            <asp:Label ID="restNumberLbl" runat="server" Text="Phone Number"></asp:Label>


                            <asp:TextBox ID="restNumberTxt" runat="server"></asp:TextBox>
                            <asp:Label ID="descriptionLbl" runat="server" Text="Description"></asp:Label>

                            <div>
                                <asp:Label ID="restHoursLbl" runat="server" Text="Hours"></asp:Label>


                                <asp:TextBox ID="restHoursTxt" runat="server"></asp:TextBox>

                                <asp:TextBox ID="descriptionTxt" runat="server" Height="41px" Width="159px"></asp:TextBox>

                                <div>
                                    <asp:Label ID="restFoodTypeLbl" runat="server" Text="Type of Food"></asp:Label>


                                    <asp:TextBox ID="restFoodTypeTxt" runat="server"></asp:TextBox>


                                    <asp:Button ID="nextBtn" runat="server" Text="Next" OnClick="NextBtn_Click" />
                                </div>
    </form>
</body>
</html>


