<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Web.master" CodeBehind="TheaterHomePage.aspx.cs" Inherits="OnlineTicketSystem.AzureWeb.TheaterHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
  
    <table class="style1">
        <tr>
            <td class="style2">
                <ul>
                    <li>
                        <asp:LinkButton ID="LinkUpdateMovieDetails" runat="server" ForeColor="#333333" 
                    onclick="LinkButton1_Click">Update Movie </asp:LinkButton>
                    </li>
                </ul>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <ul>
                    <li>
                        <asp:LinkButton ID="LinkChangePassword" runat="server" BorderColor="Black" 
                    ForeColor="#333333" onclick="LinkChangePassword_Click">Change Password</asp:LinkButton>
                    </li>
                </ul>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
  </asp:Content>