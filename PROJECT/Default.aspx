<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PROJECT.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1150px; height:30px">
        <tr style="background-color:#5f876f">
            <td colspan="2" style="text-align:right">
                <asp:Label ID="Label4" runat="server" style="text-align:left" Font-Bold="True" Font-Italic="True" Font-Names="Adobe Hebrew"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" NavigateUrl="~/LoginPage.aspx">Click to login</asp:HyperLink>
                <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#339966" BorderColor="#009900" Font-Bold="True" Font-Names="Adobe Hebrew" ForeColor="#99FF99" Height="27px" Width="105px" OnClick="Button1_Click" />
            </td>
            <td style="text-align:right">
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="174px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Images/search.png" Width="25px" OnClick="ImageButton2_Click" />
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center; background-color:#669171">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("PName") %>' Font-Bold="True" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Image ID="Image1" runat="server" BorderColor="#5C8055" BorderWidth="1px" Height="310px" Width="221px" ImageUrl='<%# Eval("PImage") %>'/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; background-color:#669171">
                        <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("PPrice") %>' Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td align="center">Quantity:
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Images/addtocart.png" Width="160px" CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" SelectCommand="SELECT [ProductId], [PName], [PImage], [PPrice] FROM [ProductTab]"></asp:SqlDataSource>
</asp:Content>
