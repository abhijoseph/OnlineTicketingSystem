<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.AzureWeb._Login" MasterPageFile="~/Web.master" Codebehind="Login.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">

    <table class="style1">
        <caption class="style3">
            Login</caption>
        <tr>
            <td class="style2">
                <asp:Label ID="LblUsr" runat="server" 
                    Text="Username"></asp:Label>
&nbsp;</td>
            
        
            <td class="style2">
                <asp:TextBox ID="txtbxusr" runat="server" ForeColor="#999999" 
                    ontextchanged="txtbxusr_TextChanged" Width="234px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtbxusr" ErrorMessage="Enter UserName" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            
            <td class="style2">
                <asp:Label ID="LblPswd" runat="server" 
                    Text="Password"></asp:Label>
            </td>
        
            <td class="style2">
                <asp:TextBox ID="Txtbxpswd" runat="server" Width="235px" 
                    ontextchanged="Txtbxpswd_TextChanged" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Txtbxpswd" ErrorMessage="Enter Password" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            <td class="style6">
                </td>
            <td class="style5">
                <asp:Label ID="label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            
            <td class="style6">
                </td>
            <td class="style5">
                <a href="Passwrd.aspx">Forgot password?</a></td>
        </tr>
        <tr>
        <td></td>
            <td class="style2">
                <asp:Button ID="Btnsign" runat="server" Height="25px" 
                    style="font-weight: 700; " 
                    Text="Login" Width="78px" onclick="Btnsign_Click" />
            
                <asp:Button ID="Button1" runat="server" Height="23px" style="font-weight: 700" 
                    Text="Register" Width="73px" CausesValidation="False" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        
    </table>
</asp:Content>
