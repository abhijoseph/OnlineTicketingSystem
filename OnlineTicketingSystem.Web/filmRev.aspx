<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Web.filmRev" MasterPageFile="~/Web.master" Codebehind="filmRev.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">

    <div>
        <table class="style1">
            <tr>
                <td>
                    Select Movie&nbsp;&nbsp;&nbsp;
                    
                    
                    </td>
                <td>
                    
                    
                    <asp:DropDownList ID="DdlMovie" runat="server" Height="17px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        style="margin-left: 0px">
                    </asp:DropDownList>
                    
                    
                </td>
            </tr>
            <tr>
                <td>
                    Review</td>
                <td bordercolor="Black">
                
                <asp:TextBox ID="TextReview" runat="server" Width="566px" Rows="3" ReadOnly="false"
 BorderStyle="Dotted" BorderWidth="0" TextMode="MultiLine" 
                    Height="255px" BorderColor="#000066" ontextchanged="TextReview_TextChanged1"></asp:TextBox> 
                
                
                    <%-- <asp:TextBox ID="TextReview" runat="server" 
                        ontextchanged="TextReview_TextChanged"></asp:TextBox>--%>
                </td>
            </tr>
           
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>

</asp:Content>
