<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Azure.latestmovie" MasterPageFile="~/Pages/Web.Master" CodeBehind="latestmovie.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <h3>Add Movie</h3>
    <div>
        <img src="C:\Users\user1\Downloads\07-om-shanti-oshana-movie-review.jpg"
            alt="Online Ticket System" style="width: 558px; height: 373px;" />



    </div>
    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-xs-3">

                <asp:Label ID="LblMovieName" runat="server" Text="MovieName"></asp:Label>
            </div>
            <div class="col-xs-3">
            <asp:TextBox ID="TextMovieName" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVMovieName" runat="server"
                ControlToValidate="TextMovieName" ErrorMessage="Enter MovieName" class="text-warning"></asp:RequiredFieldValidator>
                </div>
        </div>
        <div class="form-group">
            <div class="col-xs-3">
                <asp:Label ID="LblLanguage" runat="server" Text="Language"></asp:Label>
            </div>
            <div class="col-xs-3">
            <asp:TextBox ID="TextLanguage" runat="server" class="form-control"></asp:TextBox>
                </div>
            <asp:RequiredFieldValidator ID="RFVLanguage" runat="server"
                ControlToValidate="TextLanguage" ErrorMessage="Enter Language" class="text-warning"></asp:RequiredFieldValidator>

        </div>
        <div class="form-group">
            <div class="col-xs-3">
                <asp:Label ID="LblDirector" runat="server" Text="Director"></asp:Label>
            </div>
            <div class="col-xs-3">
            <asp:TextBox ID="TextDirector" runat="server" class="form-control"></asp:TextBox>
                </div>
            <asp:RequiredFieldValidator ID="RFVDirector" runat="server"
                ControlToValidate="TextDirector" ErrorMessage="Enter Director Name" class="text-warning"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <div class="col-xs-3">
                <asp:Label ID="LblActor" runat="server" Text="Actor"></asp:Label>
            </div>
            <div class="col-xs-3">
            <asp:TextBox ID="TextActor" runat="server" class="form-control"></asp:TextBox>
                </div>
        </div>
        <div class="form-group">
            <div class="col-xs-3">

                <asp:Label ID="LblActress" runat="server" Text="Actress"></asp:Label>
            </div>
            <div class="col-xs-3">
            <asp:TextBox ID="TextActress" runat="server" class="form-control"
                OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-3">
            </div>
            <div class="col-xs-3">
                <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" class="btn btn-primary"
                    Text="Submit" />
            </div>
            <asp:Label ID="Lblstatus" runat="server" class="text-info"></asp:Label>
        </div>
    </div>
</asp:Content>
