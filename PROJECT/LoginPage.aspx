<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PROJECT.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 52%;
            height: 50px;
        }
        .auto-style3 {
            height: 74px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            width: 800px;
            height: 400px;
        }
    </style>
</head>
<body style="background-image:url('Images/bg.jpg')">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style5" style="background-color: #00CCFF; background-image: url('Images/bglogin.jpg');">
                <tr>
                    <td colspan="2" align="center" class="auto-style3"><h2 style="font-size: xx-large; text-decoration: underline overline; color: #FFFFFF;">Login Page</h2>
                        <p>&nbsp;</p></td>
                </tr>
                <tr>
                    <td class="auto-style1" align="center" style="width:50%; color: #FFFFFF;">Email ID:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="220px" align="center" BackColor="#CCFFFF"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" align="center" style="color: #FFFFFF">Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="220px" align="center" BackColor="#CCFFFF"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Login" Height="34px" Width="196px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" align="center" colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationPage.aspx" Font-Bold="True" ForeColor="White">New User? Register here -></asp:HyperLink>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
