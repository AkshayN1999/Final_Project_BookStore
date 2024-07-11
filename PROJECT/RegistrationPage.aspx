<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="PROJECT.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 49px;
        }
        .auto-style2 {
            height: 54px;
        }
        .auto-style3 {
            width: 372px;
        }
        .auto-style4 {
            height: 49px;
            width: 372px;
        }
    </style>
</head>
<body align="center" style="background-image:url('Images/bg1.jpg')">
    <form id="form1" runat="server">
        <div align="center">
            <table border="1" style="background-color: #99CCFF; width: 760px; height: 600px; text-align: center; background-image: url('Images/register.jpg');">
                <tr>
                    <td colspan="2"><h1>Registration Page</h1>
                        <p>&nbsp;</p></td>
                </tr>
                <tr>
                    <td class="auto-style7" style="width:50%"><b>First Name:<br />
                        </b></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="323px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Only Characters allowed" ForeColor="#FF3300" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="width:50%"><b>Last Name:<br />
                        </b></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="323px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Only Characters allowed" ForeColor="#FF3300" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="width:50%"><b>Email ID:<br />
                        </b></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="323px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>Age:<br />
                        </b></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="323px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>Gender:<br />
                        </b></td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style9" Height="40px" Width="328px">
                            <asp:ListItem Value="0">Select gender</asp:ListItem>
                            <asp:ListItem Value="1">Male</asp:ListItem>
                            <asp:ListItem Value="2">Female</asp:ListItem>
                            <asp:ListItem Value="3">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><b>Address:<br />
                        </b></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox5" runat="server" Height="35px" TextMode="MultiLine" Width="327px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><b>Phone Number:<br />
                        </b></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="323px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Invalid Number" ForeColor="#FF3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><b>Password:<br />
                        </b></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox7" runat="server" Height="32px" Width="323px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><b>Confirm Password:<br />
                        </b></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox8" runat="server" Height="32px" Width="323px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="Field is mandatory" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="*Password Mismatch" ForeColor="#FF3300"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Register" Width="356px" Height="48px" OnClick="Button1_Click" BorderColor="White" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
