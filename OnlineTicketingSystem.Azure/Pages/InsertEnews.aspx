<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Azure.InsertEnews" MasterPageFile="~/Pages/Web.Master" CodeBehind="InsertEnews.aspx.cs"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">




    <table class="style1">
      
        <tr>
            <td class="style4">
                <asp:Label ID="LblHeading" runat="server" Text="Heading"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextHeading" runat="server" ></asp:TextBox>
                   
                <asp:RequiredFieldValidator ID="RFVHeading" runat="server" 
                    ControlToValidate="TextHeading" ErrorMessage="Cannot Be Left Blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style4">
                <asp:Label ID="LblDescription" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextDescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVDescription" runat="server" 
                    ControlToValidate="TextDescription" ErrorMessage="Cannot Be Left Blank" 
                    style="text-align: justify"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style9">
                <asp:Label ID="LblPostedOn" runat="server" Text="PostedOn"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="TextPostedOn" runat="server" Height="23px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVPostedOn" runat="server" 
                    ControlToValidate="TextPostedOn" ErrorMessage="Cannot Be Left Blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style5">
                <asp:Label ID="LblPostedBy" runat="server" Text="PostedBy"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextPostedBy" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVPostedBy" runat="server" 
                    ControlToValidate="TextPostedBy" ErrorMessage="Cannot Be Left Blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td style="text-align: justify">
                <asp:Button ID="ButtonSubmit" runat="server"  style="height: 26px" Text="Submit" 
                onclick="ButtonSubmit_Click" 
                    />
                <asp:Label ID="Lblstatus" runat="server"></asp:Label>
            </td>
        </tr>

    </table>
    


</asp:Content>