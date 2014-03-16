<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.Enews" MasterPageFile="~/Web.master" Codebehind="Enews.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
  
    <asp:Repeater ID="eNewsRepeater" runat="server" 
        >
        <HeaderTemplate>
            <table  style=" border:1px solid #df5015; ">
            <tr style="background-color:#df5015; color:White">
                <td colspan="2">
                    <b>News</b>
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

</asp:Content>