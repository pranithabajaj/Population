<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AppMsg.aspx.cs" Inherits="Population.AppMsg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Button{
            border-radius:10px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
    <tr><td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td></tr>
    <tr><td><asp:Button ID="Button1" runat="server"  Class="Button" Text="Home" BackColor="#33CC33" Height="39px" Width="143px" OnClick="Button1_Click" /></td></tr>
        </table>
</asp:Content>
