<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.latestmovie" MasterPageFile="~/Web.master" Codebehind="latestmovie.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">

    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="LblMovieName" runat="server" Text="MovieName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextMovieName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVMovieName" runat="server" 
                        ControlToValidate="TextMovieName" ErrorMessage="Enter MovieName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="style2">
                    <asp:Label ID="LblLanguage" runat="server" Text="Language"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextLanguage" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVLanguage" runat="server" 
                        ControlToValidate="TextLanguage" ErrorMessage="Enter Language"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="style2">
                    <asp:Label ID="LblDirector" runat="server" Text="Director"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextDirector" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVDirector" runat="server" 
                        ControlToValidate="TextDirector" ErrorMessage="Enter Director Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="style2">
                    <asp:Label ID="LblActor" runat="server" Text="Actor"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextActor" runat="server"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td class="style2">
                    <asp:Label ID="LblActress" runat="server" Text="Actress"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextActress" runat="server" 
                        ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="ButtonSubmit" runat="server" onclick="ButtonSubmit_Click" 
                        Text="Submit" />
                </td>
            </tr>
           
        </table>
    
    </asp:Content>