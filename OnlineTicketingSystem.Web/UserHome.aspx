<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.UserHome" MasterPageFile="~/Web.master" Codebehind="UserHome.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <div id="home-container">
        <div id="home-container-img">
            <img src="Images/buy-movie-tickets.jpg" alt="Online Ticket System" style="width: 700px;"/>
        </div>
        <div id="home-text">
            Online Ticketing application, a website dedicated to providing film buffs the inside scoop on all things Entertainment. A global media powerhouse that helps viewers get the latest reviews on movies and Entertainment news and also provides option to movie viewers to get tickets booked online.
        </div>
    </div>

    <%--<table class="style1">
        
        <tr>
            <td class="style2">
                <asp:Button ID="btlatestmovies" runat="server" Text="Latest Movies" 
                    onclick="btlatestmovies_Click" />
            </td>
            <td class="style3">
                <asp:Button ID="btfilmreviews" runat="server" 
                    Text="Film Reviews" 
                    onclick="btfilmreviews_Click" />
            </td>
            <td class="style8">
                <asp:Button ID="btticketbook" runat="server" onclick="Button4_Click" 
                    Text="Ticket Booking" Width="90px" 
                    />
            </td>
            <td class="style14">
                <asp:Button ID="btenews" runat="server" Text="E-News" 
                    onclick="btenews_Click" />
            </td>
            <td class="style4">
                <asp:Button ID="btlogout" runat="server" onclick="btlogout_Click" 
                    Text="LogOut" />
            </td>
        </tr>
        
    </table>--%>
</asp:Content>
