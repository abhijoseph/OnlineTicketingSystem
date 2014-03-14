<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 70%;
        }
        .style2
        {
            width: 297px;
        }
        .style3
        {
            font-size: xx-large;
            font-weight: 700;
        }
        .style4
        {
            width: 715px;
        }
        .style5
        {
            width: 297px;
            height: 22px;
        }
        .style6
        {
            width: 715px;
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <caption class="style3">
            Login</caption>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="LblUsr" runat="server" 
                    Text="Username"></asp:Label>
&nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
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
                <asp:Label ID="label1" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="LblPswd" runat="server" 
                    Text="Password"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
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
            <td class="style5">
                <a href="Passwrd.aspx">Forgot password?</a></td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Btnsign" runat="server" Height="25px" 
                    style="font-weight: 700; " 
                    Text="Login" Width="78px" onclick="Btnsign_Click" />
            </td>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" Height="23px" style="font-weight: 700" 
                    Text="Register" Width="73px" CausesValidation="False" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
