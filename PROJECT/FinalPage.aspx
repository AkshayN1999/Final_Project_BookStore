<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinalPage.aspx.cs" Inherits="PROJECT.FinalPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        ul{
            text-align:center;
        }
           ul li{
            display:inline-block;
            width:200px;
            position:relative;
           }
           ul li .fa{
            display: block;
            margin: auto;
            background:#ccc;
            width: 25px;
            height: 25px;
            color:white;
            border-radius:50%;
            padding:5px;
           }
           ul li .fa::after{
            content:'';
            background:#ccc;
            width:205px;
            height:5px;
            display:block;
            position:absolute;
            left:0;
            z-index:auto;
            top:10px;
        }
        ul li:nth-child(1) .fa{
            background: #148e14;
        }
        ul li:nth-child(1) .fa::after{
            background: #148e14;
        }

        ul li:first-child .fa::after{
                    width:105px;
                    left:100px;
        }
                
         ul li:last-child .fa::after{
                    width:105px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <br />
            <marquee direction="right" scrollamount="18" runat="server">
                <center>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/delivery.png" Width="400" Height="220" />
                </center>
            </marquee>
            <hr style="color:red; border:solid"/>
            <br />
            <h5 style="color:#006666; font-weight: bold;">You have successfully placed the order, The item will be delivered to you within 3-5 Business days.</h5>
        </div>
        <br />
        <div align="center">
            <asp:Label ID="OrderIdnum" runat="server" Text="Label" ForeColor="#339933" Font-Bold="True"></asp:Label>
        </div>
        <br />
        <br />
        <div>
            <ul>
                <li>
                    <i class="fa fa-check" aria-hidden="true"></i>

                    <p><b>Dispatched</b></p>
                </li>
                <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
            <p><b>Delivered</b></p>
                </li>
            </ul>
        </div>
        <br />
        <br />
        <div align="center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Font-Bold="True" Font-Underline="True" BackColor="#009999" ForeColor="White">Want to check all products? Click Here</asp:HyperLink>
        </div>
        <br />
                <div align="center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" Font-Bold="True" Font-Underline="True" BackColor="#009999" ForeColor="White">Home Page</asp:HyperLink>
        </div>
    </form>
</body>
</html>
