﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetLatestMovies.aspx.cs"  MasterPageFile="~/Web.master" Inherits="OnlineTicketSystem.Web.GetLatestMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
  
    <asp:Repeater ID="eNewsRepeater" runat="server" 
        >
        <HeaderTemplate>
            <table  style=" border:1px solid #df5015; ">
            <tr style="background-color:#df5015; color:White">
                <td colspan="5">
                    <b>Latest Movies</b>
                </td>
            </tr>
            </HeaderTemplate>
      
            <ItemTemplate>

            
            <tr>
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