<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Web.Master" AutoEventWireup="true" CodeBehind="AddTheater.aspx.cs" Inherits="OnlineTicketingSystem.Azure.Pages.AddTheater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <h3>Add Theater</h3>

    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="lblTheater" runat="server" Text="Add/Select Theater"></asp:Label>
            </div>
            <div class="col-xs-3">
                <asp:DropDownList ID="ddlTheater" runat="server" class="form-control" OnSelectedIndexChanged="ddlTheater_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            </div>
            <asp:RequiredFieldValidator CssClass="text-warning" ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="ddlTheater" ErrorMessage="Cannot Be Left Blank" class="text-warning"></asp:RequiredFieldValidator>
        </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="lblTheaterName" runat="server" Text="Theater Name"></asp:Label>
            </div>
            <div class="col-xs-4">
                <asp:TextBox ID="txtTheaterName" runat="server" class="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="rfvTheaterName" runat="server" CssClass="text-warning"
                ControlToValidate="txtTheaterName" ErrorMessage="Cannot Be Left Blank" class="text-warning"></asp:RequiredFieldValidator>

        </div>

        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="lblTheaterCity" runat="server" Text="City"></asp:Label>
            </div>
            <div class="col-xs-4">
                <asp:TextBox ID="txtTheaterCity" runat="server" class="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator CssClass="text-warning" ID="rfvTheaterCity" runat="server"
                ControlToValidate="txtTheaterCity" ErrorMessage="Cannot Be Left Blank"
                class="text-warning"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="lblSeatingCapacity" runat="server" Text="Seating Capacity"></asp:Label>
            </div>
            <div class="col-xs-1">
                <asp:TextBox ID="txtSeatingCapacity" runat="server" class="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator CssClass="text-warning" ID="rfvSeatingCapacity" runat="server"
                ControlToValidate="txtSeatingCapacity" ErrorMessage="Cannot Be Left Blank" class="text-warning"></asp:RequiredFieldValidator>
            <asp:CompareValidator CssClass="text-warning" ID="cv" runat="server" ControlToValidate="txtSeatingCapacity" Type="Integer"
   Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />
        </div>

        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="lblTheaterOwner" runat="server" Text="Theater Owner"></asp:Label>
            </div>
            <div class="col-xs-3">
                <asp:DropDownList ID="ddlUser" runat="server" class="form-control"></asp:DropDownList>
            </div>
            <asp:RequiredFieldValidator CssClass="text-warning" ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="ddlUser" ErrorMessage="Cannot Be Left Blank" class="text-warning"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <div class="col-xs-3 text-center"></div>
            <div>
                <asp:Button ID="ButtonSubmit" runat="server" Text="Update/Add" class="btn btn-primary" 
                    OnClick="ButtonSubmit_Click" />
                <asp:Label ID="Lblstatus" runat="server" class="text-info"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
