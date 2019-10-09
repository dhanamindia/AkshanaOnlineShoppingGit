<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineShopping.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-top: 200px; margin-bottom:200px; margin-left:100px">
        <table align ="center" style ="border:ridge ; width:350px" >
            <tr>
                <td align="center" colspan ="2">
                    <asp:Label ID="Label1" runat="server"  Text="Akshana Online Shopping - Admin Login"
                        style="font-family:Aharoni; color:darkblue; font-weight:500"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" style ="width:50%">
                    Login ID:
                </td>
                <td style ="width:50%">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style ="width:50%">
                    Password :
                </td>
                <td style ="width:50%">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style ="width:50%">
                   
                </td>
                <td style ="width:50%">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            
                </td>
            </tr>
            <tr >
                <td align="center" colspan ="2">
                 <hr />
                    <asp:Label ID="Label2" runat="server" style="font-family:Aharoni; color:red"></asp:Label>
                </td>
            </tr>
        </table>
       </div>
    </form>
</body>
</html>
