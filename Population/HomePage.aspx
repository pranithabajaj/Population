<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Population.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .Button{
            border-radius:10px;
        }
        </style>
    <table align="center">
    <tr><td><asp:Button ID="Button1"  Class="Button" runat="server" Text="Create Application" BackColor="#33CC33" OnClick="Button1_Click" Height="39px" Width="143px" /></td></tr>
       
    <tr><td><asp:Button ID="Button2"  Class="Button" runat="server" Text="Search Application" BackColor="#33CC33" Height="39px" Width="143px" OnClick="Button2_Click" /></td></tr>
    </table>
</asp:Content>
