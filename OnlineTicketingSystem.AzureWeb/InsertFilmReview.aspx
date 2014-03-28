<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Web.master"  CodeBehind="InsertFilmReview.aspx.cs" Inherits="OnlineTicketSystem.AzureWeb.InsertFilmReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">




    <table class="style7">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="LblMovieName" runat="server" Text="MovieName"></asp:Label>

            </td>
            <td>

                <asp:DropDownList ID="DdlMovieName" runat="server" Height="18px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="margin-left: 0px" Width="121px">
                </asp:DropDownList>
               
                <asp:RequiredFieldValidator ID="RFVMovieName" runat="server" 
                    ControlToValidate="DdlMovieName" ErrorMessage="Select MovieName"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
                    
<asp:Label ID="LblReview" runat="server" Text="Review"></asp:Label>
               
            </td>
            <td>
               
<asp:TextBox ID="TextReview" runat="server" 
                    ontextchanged="TextReview_TextChanged" style="margin-left: 0px"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RFVReview" runat="server" 
                    ControlToValidate="TextReview" ErrorMessage="Enter Review"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
            
                &nbsp;</td>
            <td>
            
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
                    onclick="ButtonSubmit_Click" />
                <asp:Label ID="Lblstatus" runat="server" ForeColor="#00CC00"></asp:Label>
                </td>
        </tr>
       </table>
</asp:Content>
