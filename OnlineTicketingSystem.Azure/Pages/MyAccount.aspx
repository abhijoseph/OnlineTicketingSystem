<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" MasterPageFile="~/Pages/Web.Master" Inherits="OnlineTicketSystem.Azure.MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
<h3>My Account</h3>
    
<div class="row">  
<div class="span8"> 
<ul class="nav nav-tabs nav-stacked">  
    <li>
        <a href= "EditUser.aspx">Edit Info</a>
    </li>
    <li>
        <a href="Update.aspx">Change Password</a>
    </li>
    <li><a href="Ticket.aspx">Book Ticket</a></li>
    <li><a href="CancelTickets.aspx">Cancel Ticket</a></li>
</ul>
    </div>
    </div>
 
</asp:Content>