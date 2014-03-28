<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.AzureWeb._ThetrReg" Codebehind="ThetrReg.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 105%;
            height: 297px;
            margin-right: 0px;
        }
        .style2
        {
            width: 467px;
        }
        .style3
        {
            width: 467px;
            height: 7px;
        }
        .style4
        {
            height: 7px;
        }
        .style5
        {
            width: 467px;
            height: 29px;
        }
        .style6
        {
            height: 29px;
        }
        #form1
        {
            height: 884px;
            width: 795px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1" align="center">
        <caption style="font-size: x-large; font-weight: 700">
            Theater Registration<br />
        </caption>
        <tr>
            <td class="style2">
                <asp:Label ID="LblThetr" runat="server" Text="Theater Name"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="Txtbxthetrnm" runat="server" 
                    ontextchanged="Txtbxthetrnm_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Txtbxthetrnm" ErrorMessage="Enter name" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Theater Code</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="Txtbxthetrcd" runat="server" 
                    ontextchanged="Txtbxthetrcd_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Txtbxthetrcd" ErrorMessage="Enter code" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Enter Id" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="Txtthtrpd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Txtthtrpd" ErrorMessage="Enter Password" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Txtthtrpd" ErrorMessage="(Character must be between 6 and 15)" 
                    ValidationExpression="\w{6,15}" style="font-style: italic"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Confirm"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="Txtthetrcf" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="Txtthtrpd" ControlToValidate="Txtthetrcf" 
                    ErrorMessage="Not Matching" style="font-style: italic"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                EmaiId</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TxtthtrEml" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TxtthtrEml" ErrorMessage="eg: rahul@sample.com" 
                    ForeColor="#999999" style="font-style: italic" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
&nbsp;
                <asp:DropDownList ID="Ddlcity" runat="server" Width="149px" 
                    onselectedindexchanged="Ddlcity_SelectedIndexChanged">
                    <asp:ListItem Value="kannur"></asp:ListItem>
                    <asp:ListItem Value="calicut"></asp:ListItem>
                    <asp:ListItem Value="payyannur"></asp:ListItem>
                    <asp:ListItem Value="trivandrum"></asp:ListItem>
                    <asp:ListItem Value="cochi"></asp:ListItem>
                    <asp:ListItem Value="ernakulam"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Location"></asp:Label>
&nbsp;<asp:DropDownList ID="Ddlloc" runat="server" Width="92px">
                    <asp:ListItem Value="kannur"></asp:ListItem>
                    <asp:ListItem Value="calicut"></asp:ListItem>
                    <asp:ListItem Value="payyannur"></asp:ListItem>
                    <asp:ListItem Value="ernakulam"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="www.google.com">GoogleMap</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Seating Capacity"></asp:Label>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="Txtcap" runat="server" Height="21px" Width="79px" 
                    ontextchanged="Txtcap_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="(Rgistration Card Copy)"></asp:Label>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:FileUpload ID="FileUpload1" runat="server" 
                    ondatabinding="FileUpload1_DataBinding" />
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    onclick="LinkButton1_Click">Upload</asp:LinkButton>
            </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Image ID="Image1" runat="server" DescriptionUrl="~/ThetrReg.aspx" 
                    Height="183px" Width="245px" />
                <asp:Label ID="Label8" runat="server" style="color: #FF0000"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="Btsub" runat="server" onclick="Btsub_Click" 
                    Text="Submit" />
&nbsp;<asp:Label ID="Label9" runat="server" style="color: #009900; font-weight: 700"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
