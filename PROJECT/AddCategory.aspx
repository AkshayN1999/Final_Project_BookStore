<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="PROJECT.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <table style="width:750px; height:300px; background-color:aquamarine; background-image: url('Images/bglogin.jpg');">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="Label1" runat="server" Text="Add Category" Font-Bold="True" Font-Names="Bebas Neue" Font-Overline="True" Font-Size="X-Large" Font-Underline="True" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr align="center">
                <td style="font-size: x-large; color: #FFFFFF" align="center">
                    Category:
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" align="center" Font-Bold="False" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#0099CC" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC" Width="200" Height="50px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" align="center" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <br />
            <tr>
                <td colspan="2" align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryId" ForeColor="White" OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:CommandField HeaderText="Detele" ShowDeleteButton="True">
                            <FooterStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                            <asp:TemplateField HeaderText="Categroy Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>Catergory Name</td>
                                    <td>Operation</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
