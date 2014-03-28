<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Web.master" Inherits="OnlineTicketSystem.AzureWeb.Update" Codebehind="Update.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">



    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                Change Password</td>
            <td>
                &nbsp;</td>
        </tr>
      
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                    Text="Current password:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TxtbxPsd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="Invalid Password" 
                    onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtbxPsd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                    Text="New password:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtbxpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtbxpwd" ErrorMessage="Enter new password"></asp:RequiredFieldValidator>
&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" style="color: #999999" 
                    Text="(7-15 characters)"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" style="font-weight: 700" 
                    Text="Re-Type Password:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="Txtbxretype" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Txtbxretype" ErrorMessage="Retype password"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToCompare="txtbxpwd" ControlToValidate="Txtbxretype" 
                    ErrorMessage="Not matching"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-weight: 700" Text="Update" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
  
</asp:Content>