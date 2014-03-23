<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserStatusCtrl.ascx.cs" Inherits="OnlineTicketSystem.Web.UserControls.UserStatusCtrl" %>
<div id="status-control">
    <ul id="admin-nav">
        <li id="divMyaccount" runat="server">
            <a href="/MyAccount.aspx">My Account</a>
        </li>
        <li id="divAdmin" runat="server">
            <a href="/AdminHome.aspx">Site Administration</a>
        </li>
        <li id="divAddMovie" runat="server">
            <a href="/AdminHome.aspx">Add Movie</a>
        </li>
        
        
        <li id="divLoggedIn" runat="server">
            <span>Welcome</span>
            <asp:Label ID="lblUserName" runat="server"></asp:Label>
            <asp:LinkButton ID="linkLogout" runat="server" Text="Logout" 
                CausesValidation="False" onclick="linkLogout_Click"></asp:LinkButton>
        </li>
        <li id="divLoggedOut" runat="server">
            <a href="/Login.aspx">Login</a>
        </li>
    </ul>
</div>