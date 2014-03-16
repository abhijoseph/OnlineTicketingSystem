<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Web.master"  CodeBehind="InsertFilmReview.aspx.cs" Inherits="OnlineTicketSystem.Web.InsertFilmReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">




    <table class="style7">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="LblMovieName" runat="server" Text="MovieName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextMovieName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVMovieName" runat="server" 
                    ControlToValidate="TextMovieName" ErrorMessage="Enter MovieName"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblReview" runat="server" Text="Review"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextReview" runat="server" Height="25px" 
                    ontextchanged="TextBox4_TextChanged" Width="136px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RFVReview" runat="server" 
                    ControlToValidate="TextReview" ErrorMessage="Enter Review"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
                    onclick="ButtonSubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
       </table>
</asp:Content>
