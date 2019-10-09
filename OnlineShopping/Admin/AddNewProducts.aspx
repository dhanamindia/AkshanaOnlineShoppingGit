<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewProducts.aspx.cs" Inherits="OnlineShopping.Admin.AddNewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="auto-style1">
        <tr>
            <td style="width:50%; padding-left:100px" align="left">Product Name:</td>
            <td style="width:50%; align="left">
                <asp:textbox id="txtproductname" runat="server"  Width="212px" Height="20px"></asp:textbox>
            </td>
        </tr>
       <tr>
            <td style ="width:50%; align="left">&nbsp;</td>
            <td style ="width:50%; align="left">&nbsp;</td>
        </tr>
          <tr>
            <td style="width:50%; padding-left:100px" align="left">Product Category:</td>
            <td style="width:50%; height: auto;">
                <asp:dropdownlist ID = "ddlcategory" runat="server" style="height:initial; line-height:none;" Width="212px" EnableTheming="True"   ></asp:dropdownlist>
            </td>
        </tr>
       <tr>
            <td style ="width:50%; align="left">&nbsp;</td>
            <td style ="width:50%; align="left">&nbsp;</td>
        </tr>
          <tr>
            <td style="width:50%; padding-left:100px" align="left">Product Description:</td>
            <td style="width:50%; align="left">
                <asp:textbox id="txtproductdesription" textmode="Multiline" runat="server"  Width="212px" Height="80px" ></asp:textbox>
            </td>
         </tr>
      <tr>
            <td style="width:50%; padding-left:100px" align="left">Product Image:</td>
            <td style="width:50%; align="left">
                <asp:fileupload runat="server" ID = "uploadproductphoto" Width="212px" Height="20px"></asp:fileupload>
            </td>
  
        </tr>
       <tr>
            <td style ="width:50%; align="left">&nbsp;</td>
            <td style ="width:50%; align="left">&nbsp;</td>
        </tr>
         <tr>
           <td  style="width:50%; padding-left:100px" align="left">Product Price:</td>
            <td style="width:50%; align="left">
                <asp:textbox id="productprice"  runat="server"  Width="212px" Height="20px"  ></asp:textbox>
            </td>
        </tr>
        <tr>
            <td style="width:50%;  align="left">&nbsp;</td>
            <td style="width:50%;  align="left">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:50%;  align="left">&nbsp;</td>
            <td style="width:50%;  align="left">
                <asp:button runat="server"  Text="Submit" Width="100px" Height="20px" ID="btnsubmit" OnClick="btnsubmit_Click"/>
            </td>
        </tr>
    </table>
   
</asp:Content>
