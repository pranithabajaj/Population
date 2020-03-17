<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HouseHold.aspx.cs" Inherits="Population.HouseHold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .Button{
            border-radius:10px;
        }
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
    <table align="center">
        <tr>
            <td>
                Create Application
            </td>
            <td></td>
            <td></td>
            <td style="color: #FF0000">
                <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red" ></asp:Label> Required Field
            </td>
        </tr>
        <br />
        <tr>
            <td rowspan="1">Household
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>First Name</td>
           
            <td>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>M.I.</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>Last Name</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>Suffix</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
            
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name" Display="None" ControlToValidate="txtFirst"></asp:RequiredFieldValidator>
            </td>
            <td>
             
                <asp:TextBox ID="txtMi" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name" Display="None" ControlToValidate="txtLast"></asp:RequiredFieldValidator></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>Date of Birth(mm/dd/yyyy)</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red"></asp:Label>Gender</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Date" Display="None" ControlToValidate="txtdate"></asp:RequiredFieldValidator>

            </td>
            <td>
                <asp:RadioButton ID="RdbMale" GroupName="rdbgender" runat="server" />Male</td>
            <td>
                <asp:RadioButton ID="RdbFemale" GroupName="rdbgender" runat="server" />Female</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <asp:Button ID="Button1" Class="Button" runat="server" Text="Add Member" BackColor="#33CC33"  Height="39px" Width="143px" OnClick="Button1_Click" OnClientClick="ValidateName();"/></td>
        </tr>
       <br />
        <tr>
            <td>
                <asp:Button ID="Button2" Class="Button" runat="server" Text="Save and Exit" BackColor="#33CC33"  Height="39px" Width="143px" OnClick="Button2_Click" CausesValidation="False" /></td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" />
</asp:Content>
