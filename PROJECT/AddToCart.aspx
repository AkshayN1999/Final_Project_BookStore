<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="PROJECT.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="margin: 0 auto">
            <h2 style="text-decoration: underline overline blink; color:darkcyan">You have the following items in your cart</h2>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" NavigateUrl="~/Default.aspx">Continue Shopping</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#339966" BorderColor="#006600" BorderWidth="5px" EmptyDataText="No products available on your cart" Font-Bold="True" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pid" HeaderText="Product ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                        <ControlStyle Height="310px" Width="223px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pname" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ptotalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#009999" ForeColor="White" />
            </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Place Your Order" BackColor="#006666" BorderColor="#0099CC" BorderStyle="Ridge" Font-Bold="True" Font-Size="Large" Height="46px" Width="235px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
