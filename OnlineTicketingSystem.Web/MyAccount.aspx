﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" MasterPageFile="~/Web.master" Inherits="OnlineTicketSystem.Web.MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
<h3>My Account</h3>
<ul class=big-menu-list>
    <li>
        <a href= "EditUser.aspx">Edit Info</a>
    </li>
    <li>
        <a href="Passwrd.aspx">Change Password</a>
    </li>
</ul>
</asp:Content>