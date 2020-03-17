<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Population.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Validations/function%20ValidateName.js"></script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .Button{
            border-radius:10px;
        }
        </style>
    <table>
        <tr><td>User Search</td></tr>
        
        <tr><td>Use any combination of fields below to search through all the customers</td></tr>
        <tr><td>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>First Name</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>Last Name</td></tr>
        <tr><td>
            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
        </tr>
        <tr><td>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>Dob</td></tr>
        <tr><td>
            <asp:TextBox ID="txtdob" runat="server" TextMode="Date"></asp:TextBox></td></tr>
        <tr><td>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>Application ID</td></tr>
        <tr><td>
            <asp:TextBox ID="txtaid" runat="server"></asp:TextBox></td></tr>
        <tr><td>
            <asp:Button ID="Button1" class="Button" runat="server" Text="Search" BackColor="#33CC33"  Height="39px" Width="143px" OnClick="Button1_Click"/></td></tr>
        <tr><td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5"></asp:GridView>
        </td></tr>
    </table>
</asp:Content>
