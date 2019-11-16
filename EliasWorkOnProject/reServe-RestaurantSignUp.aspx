<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantSignUp.aspx.cs" Inherits="ReServeAPI_v2._0.reServe_RestaurantSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:Label ID="RestaurantSignUp" runat="server" Text="Restaurant SignUp"></asp:Label>
            
        </div><br/>
        <div><asp:Label ID="AdminEmail" runat="server" Text="Admin Email"></asp:Label>

            <div><asp:TextBox ID="AdminEmailEntry" runat="server"></asp:TextBox></div>
            <br/>
        </div>
            <div><asp:Label ID="AdminPassword" runat="server" Text="Password"></asp:Label>
                
            <div><asp:TextBox ID="AdminPasswordEntry" runat="server"></asp:TextBox></div><br/>
                <div><asp:Label ID="RepeatPassword" runat="server" Text="Repeat Password"></asp:Label>
                
            <div><asp:TextBox ID="RepeatPasswordEntry" runat="server"></asp:TextBox></div><br/>
                    <div><asp:Label ID="RestaurantName" runat="server" Text="Restaurant Name"></asp:Label>
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="RestaurantNameEntry" runat="server"></asp:TextBox>
                        <div><asp:Label ID="RestaurantAddress" runat="server" Text="Address"></asp:Label>
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:TextBox ID="RestaurantAddressEntry" runat="server"></asp:TextBox>
                            <div><asp:Label ID="RestaurantPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:TextBox ID="RestaurantPhoneNumberEntry" runat="server"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Description" runat="server" Text="Description"></asp:Label>

                                <div><asp:Label ID="RestaurantHours" runat="server" Text="Hours"></asp:Label>
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:TextBox ID="RestaurantHoursEntry" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <asp:TextBox ID="DescriptionEntry" runat="server" Height="41px" Width="159px"></asp:TextBox>

                                    <div><asp:Label ID="RestaurantTypeofFood" runat="server" Text="Type of Food"></asp:Label>
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:TextBox ID="RestaurantTypeofFoodEntry" runat="server"></asp:TextBox>
                                        
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        
                                        <asp:Button ID="NextBtn" runat="server" Text="Next" />
        </div>
        
    </form>
</body>
</html>


