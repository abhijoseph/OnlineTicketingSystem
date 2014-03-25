<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Web.master" Inherits="OnlineTicketSystem.Web.Userdisp" Codebehind="Userdisp.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">




    <table class="style1">
       
        <tr>
            <td class="style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:onlineticketConnectionString %>" 
                    SelectCommand="SELECT [Firstname], [Emailid] FROM [UserReg]" 
                    onselecting="SqlDataSource1_Selecting">
                </asp:SqlDataSource>
            </td>
            <td class="style8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Emailid" DataSourceID="SqlDataSource1" Height="246px" 
                    style="margin-top: 7px; margin-bottom: 2px" Width="304px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Emailid" HeaderText="Emailid" ReadOnly="True" 
                            SortExpression="Emailid" />
                          
                            <asp:ButtonField  ButtonType="Button" CommandName="Edit" Text="Edit User" />
                           </Columns> 
                    
                </asp:GridView>
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
                    ConnectionString="<%$ ConnectionStrings:onlineticketConnectionString %>" 
                    onselecting="SqlDataSource2_Selecting" 
                    SelectCommand="SELECT [TheaterName], [TheaterCode] FROM [register]">
                </asp:SqlDataSource>
            </td>
            <td class="style3">
            </td>
        </tr>
        
    </table>
</asp:Content>