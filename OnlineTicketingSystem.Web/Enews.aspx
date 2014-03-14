<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.Enews" MasterPageFile="~/Web.master" Codebehind="Enews.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
  
    <asp:Repeater ID="eNewsRepeater" runat="server">
        <HeaderTemplate>
            <table style=" border:1px solid #df5015; width:500px" cellpadding="0">
            <tr style="background-color:#df5015; color:White">
            <td colspan="2">
            <b>News</b>
            </td>
            </tr>
            </HeaderTemplate>
            <ItemTemplate>
            
            <tr>
            <td>
            <asp:Label ID="lblNewsHeading" runat="server" Text='<%#Eval("Heading") %>'/>
            </td>
            </tr>
            <tr>
            <td>
            <asp:Label ID="LblNewsDescription" runat="server" Text='<%#Eval("Description") %>'/>
            </td>
            </tr>
          
            
            </ItemTemplate>
            <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>

</asp:Content>