<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Azure._Login" MasterPageFile="~/Pages/Web.Master" CodeBehind="Login.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <h3>Login</h3>
    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-xs-3">
            <asp:Label ID="LblUsr" runat="server" class="control-label pull-right"
                Text="Username"></asp:Label>
                </div>
            <div class="col-xs-3">
                <asp:TextBox ID="txtbxusr" runat="server" class="form-control"
                    OnTextChanged="txtbxusr_TextChanged"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" class="text-warning"
                ControlToValidate="txtbxusr" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>

        </div>

        <div class="form-group">
            <div class="col-xs-3">
            <asp:Label ID="LblPswd" runat="server" class="control-label pull-right"
                Text="Password"></asp:Label>
                </div>
            <div class="col-xs-3">
                <asp:TextBox ID="Txtbxpswd" runat="server" class="form-control"
                    OnTextChanged="Txtbxpswd_TextChanged" TextMode="Password"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" class="text-warning"
                ControlToValidate="Txtbxpswd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>

        </div>
        <div class="form-group">
            <div class="col-xs-8 text-center">
            <asp:Label ID="label1" runat="server" class="text-info"></asp:Label>
                </div>
        </div>

        <div class="form-group">
            <a href="Passwrd.aspx" class="col-md-6 pull-right">Forgot password?</a>

        </div>
        <div class="form-group">
            <div class="col-xs-8 text-center">
            <asp:Button ID="Btnsign" runat="server"
                class="btn btn-primary"
                Text="Login" OnClick="Btnsign_Click" />
            <asp:Button ID="Button1" runat="server" class="btn btn-default"
                Text="Register" CausesValidation="False"
                OnClick="Button1_Click" />
                </div>
        </div>
    </div>
</asp:Content>
