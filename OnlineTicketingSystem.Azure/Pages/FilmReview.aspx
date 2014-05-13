<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Web.Master" AutoEventWireup="true" CodeBehind="FilmReview.aspx.cs" Inherits="OnlineTicketingSystem.Azure.Pages.FilmReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <h3>Read Latest Film Reviews</h3>
    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-xs-2">
                    Select Movie
                    
                  </div>
            <div class="col-xs-3">
                    
                <asp:DropDownList ID="ddlMovieReview" runat="server" OnSelectedIndexChanged="ddlMovieReview_SelectedIndexChanged" AutoPostBack="true" EnableViewState="true" ></asp:DropDownList>
            </div>        
                    
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">Language</div>
            <div class="col-xs-4">
                    <asp:Label ID="txtLanguage" runat="server" ></asp:Label>
            </div>
        </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">Director</div>
            <div class="col-xs-4">
                    <asp:Label ID="txtDir" runat="server" ></asp:Label>
            </div>
        </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">Starcast</div>
            <div class="col-xs-4">
                    <asp:Label ID="txtStar" runat="server" ></asp:Label>
            </div>
        </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">Review</div>
            <div class="col-xs-4">
                    <asp:Label ID="TextReview" runat="server" ></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-2">
                    </div>
            <div class="col-xs-4">
                <%--<asp:Button ID="ButtonSubmit" runat="server" Text="Update/Add" class="btn btn-primary" 
                    />--%>
                <asp:Label ID="Lblstatus" runat="server" class="text-info"></asp:Label>
            </div>
       </div>
        
    </div>
</asp:Content>
