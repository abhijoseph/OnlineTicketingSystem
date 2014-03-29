<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetLatestMovies.aspx.cs"  MasterPageFile="~/Pages/Web.Master" Inherits="OnlineTicketSystem.Azure.GetLatestMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
  
    <asp:Repeater ID="eNewsRepeater" runat="server" >
        <HeaderTemplate>
            <table >
            <tr style="background-color:Silver; color:White; margin:5px">
                <td colspan="5">
                    <span>Latest Movies</span>
                </td>
            </tr>
            </HeaderTemplate>
      
            <ItemTemplate>

            
            <tr class="news-heading">
                <th rowspan="2">
                    <asp:Label ID="lblMovieName" runat="server" Text='<%#Eval("MovieName") %>'/>
                </th>
                
            </tr>
            <tr>
                <td>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Actor") %>'/>
                </td>
                <td>
                    <asp:Label ID="lblActress" runat="server" Text='<%#Eval("Actress") %>'/>
                </td>
                <td>
                    <asp:Label ID="LblDirector" runat="server" Text='<%#Eval("Director") %>'/>
                </td>
                 <td>
                    <asp:Label ID="LblLanguage" runat="server" Text='<%#Eval("Language") %>'/>
                </td>
            </tr>
            
            </ItemTemplate>
            <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>
  
  
  
  </asp:Content>