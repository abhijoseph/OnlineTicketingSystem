<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/Web.Master" CodeBehind="AdminHome.aspx.cs" Inherits="OnlineTicketSystem.Azure.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">

<h3>Site Administration</h3>
<div class="row">  
<div class="span8"> 
        <ul class="nav nav-tabs nav-stacked">
            <li><a href= "InsertFilmReview.aspx">Write Movie Review</a></li>
            <li><a href="InsertEnews.aspx">Write E-News</a></li>
            <li><a href="latestmovie.aspx">Add Latest Movies</a></li>
            <li><a href= "UserDisp.aspx">Edit User</a></li>
            <li><a href="#">Edit Theater</a></li>
        </ul>
</div>
    </div>





    <%--<table class="style7">
        <tr>
            <td>
                <ul>
                    <li>
                        <asp:LinkButton ID="LinkAddUser" runat="server" Font-Size="Small" 
                            ForeColor="#333333" onclick="LinkButton1_Click">Add User</asp:LinkButton>
                    </li>
                </ul>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>
                        <asp:LinkButton ID="LinkAddTheater" runat="server" Font-Size="Small" 
                            ForeColor="#333333" onclick="LinkAddTheater_Click">Add Theater</asp:LinkButton>
                    </li>
                </ul>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>
                        <asp:LinkButton ID="LinkChangePassword" runat="server" ForeColor="#333333" 
                            onclick="LinkChangePassword_Click">Change Password</asp:LinkButton>
                    </li>
                </ul>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>
                        <asp:LinkButton ID="LinkUpdateAccount" runat="server" ForeColor="#333333" 
                            onclick="LinkUpdateAccount_Click">Update Account</asp:LinkButton>
                    </li>
                </ul>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>--%>








</asp:Content>
