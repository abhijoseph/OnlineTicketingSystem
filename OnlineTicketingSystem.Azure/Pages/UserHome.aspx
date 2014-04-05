<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Azure.UserHome" MasterPageFile="~/Pages/Web.Master" Codebehind="UserHome.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <div class="jumbotron">
        <h2>Online Ticketing System</h2>
        <div class="row">
            <div class="col-lg-5">
            <img src="../Images/buy-movie-tickets.png" alt="Online Ticket System" style="width:400px" />
                </div>
            
            <div class="col-lg-7">
            <p class="lead">
            Online Ticketing application, a website dedicated to providing film buffs the inside scoop on all things Entertainment. A global media powerhouse that helps viewers get the latest reviews on movies and Entertainment news and also provides option to movie viewers to get tickets booked online.
                
        </p>
                </div>
        </div>
        
    </div>
    <div class="row">
        <div class="col-md-6">
            <h3>Entertainment News</h3>
            <p>
                Your source for entertainment news, celebrities and Movie industry. Check out the hottest fashion, photos, movies and TV shows!
            </p>
            <p>
                <a class="btn btn-default" href="../Pages/Enews.aspx">More News</a>
            </p>
        </div>
        <div class="col-md-6">
            <h3>Movies</h3>
            <p>
                Know more about latest movies in town. Book tickets and enjoy your time.
            </p>
            <p>
                <a class="btn btn-default" href="../Pages/GetLatestMovies.aspx">More Movies</a>
            </p>
        </div>
    </div>

    <%--<table class="style1">
        
        <tr>
            <td>
                <asp:Button ID="btlatestmovies" runat="server" Text="Latest Movies" 
                    onclick="btlatestmovies_Click" />
            </td>
            <td>
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
