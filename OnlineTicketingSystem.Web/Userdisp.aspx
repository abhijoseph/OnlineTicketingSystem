<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.Userdisp" Codebehind="Userdisp.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 16px;
        }
        .style3
        {
            height: 270px;
        }
        .style4
        {
            width: 411px;
        }
        .style5
        {
            height: 270px;
            width: 411px;
        }
        .style6
        {
            height: 16px;
            width: 411px;
        }
        .style7
        {
            width: 510px;
        }
        .style8
        {
            height: 270px;
            width: 510px;
        }
        .style9
        {
            height: 16px;
            width: 510px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Eid" DataSourceID="SqlDataSource1" Height="246px" 
                    style="margin-top: 7px; margin-bottom: 2px" Width="359px">
                    <Columns>
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Eid" HeaderText="Eid" ReadOnly="True" 
                            SortExpression="Eid" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:onlineticketConnectionString %>" 
                    SelectCommand="SELECT [Firstname], [Eid] FROM [UserReg]">
                </asp:SqlDataSource>
            </td>
            <td class="style8">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" Height="246px" style="margin-top: 12px" 
                    Width="383px">
                    <Columns>
                        <asp:BoundField DataField="TheaterName" HeaderText="TheaterName" 
                            SortExpression="TheaterName" />
                        <asp:BoundField DataField="TheaterCode" HeaderText="TheaterCode" 
                            SortExpression="TheaterCode" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:onlineticketConnectionString2 %>" 
                    onselecting="SqlDataSource2_Selecting" 
                    SelectCommand="SELECT [TheaterName], [TheaterCode] FROM [register]">
                </asp:SqlDataSource>
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style9">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</form>
</body>
</html>
