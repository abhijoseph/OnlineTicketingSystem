<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserStatusCtrl.ascx.cs" Inherits="OnlineTicketingSystem.Azure.UserControls.UserStatusCtrl" %>

    <ul class="nav navbar-nav">
        <li id="divMyaccount" runat="server">
            <a href="../Pages/MyAccount.aspx">My Account</a>
        </li>
        <li id="divAdmin" runat="server">
            <a href="../Pages/AdminHome.aspx">Site Administration</a>
        </li>
        <li id="divAddMovie" runat="server">
            <a href="../Pages/AdminHome.aspx">Add Movie</a>
        </li>
        
        
        <li id="divLoggedIn" runat="server">
            <div class="form-inline navbar-text">
            <span class="text-primary ">Welcome</span> <asp:Label ID="lblUserName" CssClass="text-primary" runat="server"></asp:Label> <asp:LinkButton ID="linkLogout" runat="server" Text="Logout" 
                CausesValidation="False" onclick="linkLogout_Click"></asp:LinkButton>
                </div>
        </li>
        <li id="divLoggedOut" runat="server">
            <a href="../Pages/Login.aspx">Login</a>
        </li>
    </ul>