<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserStatusCtrl.ascx.cs" Inherits="OnlineTicketSystem.Web.UserControls.UserStatusCtrl" %>
<div id="status-control">
<div id="divLoggedIn" runat="server">
    <span>Welcome</span>
    <asp:Label ID="lblUserName" runat="server"></asp:Label>
    <asp:LinkButton ID="linkLogout" runat="server" Text="Logout" 
        CausesValidation="False" onclick="linkLogout_Click"></asp:LinkButton>
</div>
<div id="divLoggedOut" runat="server">
    <a href="/Login.aspx">Login</a>
</div>
</div>