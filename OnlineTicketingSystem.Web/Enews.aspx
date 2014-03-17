<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.Enews" MasterPageFile="~/Web.master" Codebehind="Enews.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
  <div>
    <asp:Repeater ID="eNewsRepeater" runat="server" 
        >
        <HeaderTemplate>
            <table>
            <tr style="background-color:Silver ; color:White; margin:5px">
                <td colspan="2">
                    <span>Latest Entertainment News</span>
                </td>
            </tr>
            </HeaderTemplate>
            <ItemTemplate>
            
            <tr class="news-heading">
                <td colspan="2">
                    <asp:Label ID="lblNewsHeading" runat="server" Text='<%#Eval("Heading") %>'/>
                </td>
            </tr>
                    
            <tr>
             <td>
             <asp:Label ID="lblPostedBy" runat="server" Text='<%#Eval("PostedBy") %>'/>
             </td>
             <td>
             <asp:Label ID="lblPostedOn" runat="server" Text='<%#Eval("PostedOn") %>'/>
             </td>
            
            </tr>
            <tr class="news-description">
                <td colspan="2">
                    <asp:Label ID="LblNewsDescription" runat="server" Text='<%#Eval("Description") %>'/>
                </td>
            </tr>
          
            
            </ItemTemplate>
            <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>
</div>
</asp:Content>