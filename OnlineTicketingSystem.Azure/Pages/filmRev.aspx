<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Azure.filmRev" MasterPageFile="~/Pages/Web.Master" Codebehind="filmRev.aspx.cs" %>
<asp:Content ID="filmRevContent" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">

  <h3>Add Review</h3>
    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-xs-2">
                    Select Movie
                    
                  </div>
            <div class="col-xs-3">
                    
                <asp:DropDownList ID="ddlMovieReview" runat="server" OnSelectedIndexChanged="ddlMovieReview_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </div>        
                    
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">Review</div>
            <div class="col-xs-4">
                    <asp:TextBox ID="TextReview" runat="server"  Columns="80" Rows="10" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-2">
                    </div>
            <div class="col-xs-4">
                <asp:Button ID="ButtonSubmit" runat="server" Text="Update/Add" class="btn btn-primary" 
                    OnClick="ButtonSubmit_Click" />
                <asp:Label ID="Lblstatus" runat="server" class="text-info"></asp:Label>
            </div>
       </div>
        
    </div>

</asp:Content>

