<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" 
    CodeBehind="AddEditCategory.aspx.cs" Inherits="OnlineShopping.Admin.AddEditCategory" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div align ="center">
        <h4>Add New Category</h4>
        <hr />
    </div>
    <table align="center" cellspacing="1" style="width:100%;">
        <tr>
            <td style="width:50%; padding-left:100px" align="left" >
                Category Name:
            </td>
            <td style="width:50%;" align="left" >
                <asp:TextBox ID="TextBox1" runat="server" Width="212px" Height="20px"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td  style="width:50%; padding-left:100px" align="left">
                &nbsp;
            </td>
            <td style="width:50%;" align="left" >
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px" Height="20px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td  style="width:50%;  align="right">
                &nbsp;
            </td>
            <td  style="width:50%;  align="left">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td  style="width:50%; align="right">
                &nbsp;
            </td>
            <td  style="width:50%; align="left">
                &nbsp;
            </td>
        </tr>
        </table>
</asp:Content>

