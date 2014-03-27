<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" MasterPageFile="~/Web.master" Inherits="OnlineTicketSystem.Web.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">

    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="LabelAccNum" runat="server" Text="Enter Account Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextAcc" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextAcc" ErrorMessage="Cannot Be Left Blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelPanNum" runat="server" Text="Enter Email Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextPan" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextPan" ErrorMessage="Cannot Be Left Blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        

        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" />
            </td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            width: 48%;
        }
    </style>

</asp:Content>
