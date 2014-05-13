<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/Web.Master" CodeBehind="InsertFilmReview.aspx.cs" Inherits="OnlineTicketSystem.Azure.InsertFilmReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">


    <h3>Add Film Review</h3>

    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-xs-3">
                <asp:Label ID="LblMovieName" runat="server" Text="MovieName"></asp:Label>

            </div>
            <div class="col-xs-3">
                <asp:DropDownList ID="DdlMovieName" runat="server" class="form-control"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
            </div>
            <asp:RequiredFieldValidator ID="RFVMovieName" runat="server" class="text-warning"
                ControlToValidate="DdlMovieName" ErrorMessage="Select MovieName"></asp:RequiredFieldValidator>
        </div>

    <div class="form-group">
        <div class="col-xs-3">
            <asp:Label ID="LblReview" runat="server" Text="Review"></asp:Label>
        </div>
        <div class="col-xs-6">

            <asp:TextBox ID="TextReview" runat="server" TextMode="MultiLine" Columns="100" Rows="10" class="form-control"
                OnTextChanged="TextReview_TextChanged"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RFVReview" runat="server"
            ControlToValidate="TextReview" ErrorMessage="Enter Review" class="text-warning"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <div class="col-xs-3">
        </div>

        <div class="col-xs-3">
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" class="btn btn-primary"
                OnClick="ButtonSubmit_Click" />
        </div>
        <asp:Label ID="Lblstatus" runat="server" class="text-info"></asp:Label>
    </div>
            </div>
</asp:Content>
