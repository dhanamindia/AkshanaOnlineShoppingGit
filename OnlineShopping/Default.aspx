<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineShopping.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type =" text/css">
        .style1 
        {width:900px;
        }
        .style2
        {width:833px;
         text-align:left;
        }
        .style3 
        {width: 257px;
         text-align:center;
        }
        .style4 
        {width:187px;
         text-align:center;
        }

        .auto-style2 {
            height: 23px;
        }

        .auto-style3 {
            width: 100%;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table align="center" class="style1">
                    <tr>
                        <td>
                            <table align="center" style="border-bottom-style:ridge ; border-width:medium; width:900px ">
                                <tr>
                                    <td align="center">
                                        <asp:Image ID="Image1" runat="server" Height="81px" Width="109px" ImageUrl="~/Images/OSLogo.jpg" />
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="lbllogo" runat="server" Font-Size="X-Large" forecolor="BlueViolet" Font-Bold="true" >Akshana Online Shopping</asp:LinkButton>
                                        <br />
                                        More Shopping....More Excitement ....!!!!!
                                    </td>
                                    <td  >
                                         <asp:Image ID="Image2" runat="server" Height="81px" Width="200px" ImageUrl="~/Images/shopping.jpg" />
                                    </td>
                                    <td align="right">
                                         <asp:Image ID="Image3" runat="server" Height="60px" Width="60px" ImageUrl="~/Images/cart.png" />
                                    </td>
                                    <td align="center">
                                        <asp:LinkButton ID="lblcart" runat="server" Height="30px" Width="40px" ForeColor="Red" Font-Underline="false" Font-Size="Large" >0</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table align="center" class="style1" style="border:thin ridge">
                                <tr>
                                    <td class="style2">
                                        &nbsp;
                                        <asp:Label ID="lblcategoryname" runat="server"  Font-Size="15pt" Text="Label"></asp:Label>
                                    </td>
                                    <td class="style3" >
                                        &nbsp;
                                        <asp:Label ID="lblproducts" runat="server" Font-Size="15pt" Text="Products"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table align="center" class="style1" style="border:thin ridge">
                                <tr>
                                    <td class="style2" valign="top">
                                        <asp:Panel ID="pnlproducts" runat="server" Height="500px" Width="707px" ScrollBars="Auto"
                                            BorderColor="Black" BorderStyle="Inset" BorderWidth="1px">

                                            <asp:DataList ID="dlproducts" runat="server" RepeatColumns="3" Width="600px" Font-Bold="false"
                                                Font-Italic="false" Font-Overline="false" Font-Strikeout="false" Font-Underline="false">
                                                <ItemTemplate >
                                                    <div align="left">
                                                        <table cellspacing="1" class="style4" style="border:thin ridge;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblproductname" runat="server" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Image ID="imgproductphoto"  style="border:thin ridge 1px black" runat="server" Width="173px" Height="160px"  />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                   Price: <asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>  &nbsp
                                                                    <asp:Image ID="imgstar" Visible="false" runat="server" ImageUrl="~/Images/greenstar.png" />
                                                                     &nbsp Stock: <asp:Label ID="lbavailablestock" ToolTip="Available Stock" ForeColor="Red"
                                                                         runat="server" Text="Label"></asp:Label>
                                                                    
                                                                    <asp:HiddenField ID="hfproductid" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style2">
                                                                    <asp:Button ID="btnaddtocart" runat="server" Text="Add to cart" Width="100%" BorderColor="Black" 
                                                                        BorderWidth="1px" BorderStyle="Inset" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </ItemTemplate>
                                                <ItemStyle Width="33%" />
                                            </asp:DataList>

                                        </asp:Panel>
                                        <asp:Panel ID="pnlmycart" Visible="false" runat="server" Height="500px" Width="707px" ScrollBars="Auto"
                                            BorderColor="Black" BorderStyle="Inset" BorderWidth="1px">
                                            <table align="center" cellspacing="1">
                                                <tr>
                                                    <td align="center">
                                                        <asp:Label ID="lbavailablestockalert" runat="server" ForeColor="Red" Font-Bold="true" Text="Label"></asp:Label>
                                                        <asp:DataList ID="dlcartproducts" RepeatColumns="3" Width="550px" runat="server">
                                                            <ItemTemplate>
                                                                <div align="left">
                                                                    <table cellspacing="1" style="border:1px ridge; width:172px;" align="left" >
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label ID="lblProductName" runat="server" Text="Label" style="font-weight:700" ></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Image ID="Image4" runat="server" width=157px height= 130px/>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> Available Stock: &nbsp;
                                                                                <asp:Label ID="lblavailablestock" runat="server" Text="Label" Font-Bold ="true" ForeColor="Red"></asp:Label>
                                                                                <br />
                                                                                Price:<asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                                                                                &nbsp &nbsp
                                                                                <asp:TextBox ID="txtproductquantity" Width="10px" Height="10px" MaxLength="1" runat="server" AutoPostBack="true"></asp:TextBox>
                                                                                <asp:HiddenField ID="hfproductid" runat="server" />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Button ID="btnremovefromcart" runat="server" Text="Remove from cart" Width="100%" BorderColor="Black" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:DataList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td class="style3">
                                        <asp:Panel ID="pnlcategories" runat="server"  ScrollBars="Auto" Height="500px" 
                                            BorderColor="Black" BorderStyle="Inset" BorderWidth="1px">
                                            <asp:DataList ID="dlcategories" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" 
                                                BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical"  Width="252px">
                                                <AlternatingItemStyle BackColor="White" />
                                                <FooterStyle BackColor="#CCCC99" />
                                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                <ItemStyle BackColor="#F7F7DE" />
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lbtncategory" runat="server">LinkButton</asp:LinkButton>
                                                </ItemTemplate>
                                                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            </asp:DataList>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlcheckout" runat="server"></asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" style="border:thin ridge">
                                        &nbsp;&nbsp; &copy; www.akshanaonlineshopping.com
                                        || <a href="~/Admin/Login.aspx" >AdminPanel</a>
                                    </td>

                                </tr>

                            </table>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>


        </asp:UpdatePanel>
    </form>
</body>
</html>
