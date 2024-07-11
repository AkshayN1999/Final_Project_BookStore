<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="PROJECT.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:750px; height:300px; background-color:aquamarine; background-image: url('Images/bglogin.jpg');" align="center">
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" ForeColor="White" OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:TemplateField HeaderText="Product Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Operations" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
</table>
</asp:Content>
