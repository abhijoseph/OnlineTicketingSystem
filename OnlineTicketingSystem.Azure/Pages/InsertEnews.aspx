<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Azure.InsertEnews" MasterPageFile="~/Pages/Web.Master" CodeBehind="InsertEnews.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">


    <h3>Add Entertainment News</h3>

    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="LblHeading" runat="server" Text="Heading"></asp:Label>
            </div>
            <div class="col-xs-8">
                <asp:TextBox ID="TextHeading" runat="server" class="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RFVHeading" runat="server"
                ControlToValidate="TextHeading" ErrorMessage="Cannot Be Left Blank" class="text-warning"></asp:RequiredFieldValidator>

        </div>

        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="LblDescription" runat="server" Text="Description"></asp:Label>
            </div>
            <div class="col-xs-7">
                <asp:TextBox ID="TextDescription" runat="server" TextMode="MultiLine" Columns="100" Rows="10" class="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RFVDescription" runat="server"
                ControlToValidate="TextDescription" ErrorMessage="Cannot Be Left Blank"
                class="text-warning"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="LblPostedOn" runat="server" Text="PostedOn"></asp:Label>
            </div>
            <div class="col-xs-3">
                <asp:TextBox ID="TextPostedOn" runat="server" class="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RFVPostedOn" runat="server"
                ControlToValidate="TextPostedOn" ErrorMessage="Cannot Be Left Blank" class="text-warning"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="LblPostedBy" runat="server" Text="PostedBy"></asp:Label>
            </div>
            <div class="col-xs-3">
                <asp:TextBox ID="TextPostedBy" runat="server" class="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RFVPostedBy" runat="server"
                ControlToValidate="TextPostedBy" ErrorMessage="Cannot Be Left Blank" class="text-warning"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <div class="col-xs-3 text-center"></div>
            <div>
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" class="btn btn-primary" 
                    OnClick="ButtonSubmit_Click" />
                <asp:Label ID="Lblstatus" runat="server" class="text-info"></asp:Label>
            </div>
        </div>
    </div>


</asp:Content>
