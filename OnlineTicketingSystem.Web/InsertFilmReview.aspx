<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Web.master"  CodeBehind="InsertFilmReview.aspx.cs" Inherits="OnlineTicketSystem.Web.InsertFilmReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">




    <table class="style7">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="LblMovieName" runat="server" Text="MovieName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DdlMovieName" runat="server" Height="18px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="margin-left: 0px" Width="121px">
                    <asp:ListItem Value="Usthad Hotel"></asp:ListItem>
                    <asp:ListItem Value="HoneyBee"></asp:ListItem>
                    <asp:ListItem Value="1983"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFVMovieName" runat="server" 
                    ControlToValidate="DdlMovieName" ErrorMessage="Select MovieName"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="LblReview" runat="server" Text="Review"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextReview" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
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
