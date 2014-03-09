<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.Ticket" Codebehind="Ticket.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 64%;
        }
        .style2
        {
            width: 135px;
        }
        .style5
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: x-large;
            width: 542px;
        }
        .style6
        {
            width: 542px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                Book&nbsp; Ticket</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lblcity" runat="server" Text=" City"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="Ddlcity" runat="server" Height="20px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="135px" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RfCity" runat="server" 
                    ErrorMessage="Select your city" ControlToValidate="Ddlcity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lbltheater" runat="server" Text="Theater"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="Ddltheater" runat="server" Height="32px" Width="135px" 
                    onselectedindexchanged="Ddltheater_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="Rftheater" runat="server" 
                    ErrorMessage="Select theater" ControlToValidate="Ddltheater"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lbllanguage" runat="server" Text="Language"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="Ddllanguage" runat="server" Height="25px" Width="134px" 
                    onselectedindexchanged="Ddllanguage_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem Value="Hindi"></asp:ListItem>
                    <asp:ListItem Value="English"></asp:ListItem>
                    <asp:ListItem Value="Malayalam"></asp:ListItem>
                    <asp:ListItem Value="Tamil"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="Rflang" runat="server" 
                    ErrorMessage="Select a language" ControlToValidate="Ddllanguage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lblmovie" runat="server" Text="Movie"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="Ddlmovie" runat="server" Height="18px" Width="133px" 
                    onselectedindexchanged="Ddlmovie_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="Rfmovie" runat="server" 
                    ErrorMessage="Select a movie" ControlToValidate="Ddlmovie"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lbldate" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="Txtbxdate" runat="server" style="text-align: center"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Rfdate" runat="server" 
                    ErrorMessage="Select date" ControlToValidate="Txtbxdate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lbltime" runat="server" Text="Time"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="Ddltime" runat="server" Height="17px" Width="132px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="Rftime" runat="server" 
                    ErrorMessage="Select time" ControlToValidate="Ddltime"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblseat" runat="server" Text="No:of  Seats"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="Txtbxseat" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="seat" runat="server" 
                    ErrorMessage="Enter no:of seats" ControlToValidate="Txtbxseat"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Btnselect" runat="server" Text="Select your seat" 
                    onclick="Btnselect_Click" />
            </td>
            <td class="style6">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                    Height="172px" Visible="False">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="BtCnfirm" runat="server" Text="Confirm" 
                    onclick="BtCnfirm_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
