<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.Create" MasterPageFile="~/Web.master" Codebehind="Create.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    
    <table class="style1">
        <caption class="style3">
            Registration</caption>

        <tr>
            <td class="style2" >
                <asp:Label ID="LblFirst" runat="server" 
                    Text="First  Name   "></asp:Label>
            </td>
        
            <td id="LblFisrt" class="style2">
                <asp:TextBox ID="TxtbxFirst" runat="server" 
                    ontextchanged="TxtbxFirst_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtbxFirst" ErrorMessage="Enter username" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style2">
                <asp:Label ID="LblLast" runat="server" 
                    style="font-size: medium; " 
                    Text="Last Name"></asp:Label>
            </td>
        
            <td class="style2">
                <asp:TextBox ID="TxtBxLast" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtBxLast" ErrorMessage="Enter Last name" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label13" runat="server" Text="UserName"></asp:Label>
            </td>
        
            <td class="style2">
                <asp:TextBox ID="TextBxUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="LblId" runat="server" 
                    style="font-size: medium; " 
                    Text="Email ID"></asp:Label>
            </td>
        
            <td class="style2">
                <asp:TextBox ID="TxtEid" runat="server" Width="126px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TxtEid" ErrorMessage="eg: rahul@mail.com" ForeColor="Gray" 
                    style="font-style: italic" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" 
                    style="font-size: medium; ">Password</asp:Label>
                <asp:Label ID="Label10" runat="server" ForeColor="#999999" 
                    style="font-style: italic" Text="(6 to 15 charecter)"></asp:Label>
            </td>
        
            <td class="style4">
                <asp:TextBox ID="TxtBxpswd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TxtBxpswd" ErrorMessage="Enter password" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TxtBxpswd" 
                    ErrorMessage="(Character must be between 6 and 15)" style="font-style: italic" 
                    ValidationExpression="\w{6,15}"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" 
                    style="font-size: medium; " 
                    Text="Re-Enter"></asp:Label>
            </td>
        
            <td class="style2">
                <asp:TextBox ID="TextBxrenter" runat="server" TextMode="Password" 
                    ontextchanged="TextBxrenter_TextChanged"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TxtBxpswd" ControlToValidate="TextBxrenter" 
                    ErrorMessage="Not Matching" style="font-style: italic"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" 
                    style="font-size: medium; " 
                    Text="Date Of Birth"></asp:Label>
            </td>
       
            <td class="style2">
                <asp:Label ID="Label7" runat="server" 
                    style="font-size: medium;" Text="Date         "></asp:Label>
                <asp:DropDownList ID="Ddldate" runat="server" >
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label8" runat="server" 
                    style="font-size: medium;" Text="Month"></asp:Label>
&nbsp;<asp:DropDownList ID="Ddlmnth" runat="server">
                    <asp:ListItem Value="jan"></asp:ListItem>
                    <asp:ListItem Value="feb"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label9" runat="server" Text="year"></asp:Label>
                <asp:DropDownList ID="Ddlyr" runat="server" style="margin-left: 22px">
                    <asp:ListItem Value="1991"></asp:ListItem>
                    <asp:ListItem Value="1990"></asp:ListItem>
                    <asp:ListItem Value="1992"></asp:ListItem>
                    <asp:ListItem Value="1993"></asp:ListItem>
                    <asp:ListItem Value="1994"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
        
            <td class="style2">
                <asp:Button ID="Btregister" runat="server" Font-Bold="True" Height="22px" Text="Register" 
                    Width="96px" onclick="Btregister_Click" />
                <asp:Label ID="Label11" runat="server" ForeColor="#009900" 
                    style="font-style: italic; font-weight: 700"></asp:Label>
            </td>
        </tr>
    </table>

<p>
    &nbsp;</p>
</asp:Content>
