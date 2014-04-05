<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Azure.Enews" MasterPageFile="~/Pages/Web.Master" CodeBehind="Enews.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <div>
        <h3>Entertainment News</h3>
        <asp:Repeater ID="eNewsRepeater" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="row">
                    <div class="col-sm-10 news-heading">

                        <asp:Label ID="lblNewsHeading" runat="server" Text='<%#Eval("Heading") %>' />
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <asp:Label ID="lblPostedBy" class="text-info" runat="server" Text='<%#Eval("PostedBy") %>' />
                    </div>
                    <div class="col-lg-4">
                        <asp:Label ID="lblPostedOn" class="text-info" runat="server" Text='<%#Eval("PostedOn") %>' />
                    </div>
                </div>
                <div class="row border-row">
                <div class="col-sm-10 news-description">

                    <asp:Label ID="LblNewsDescription" runat="server" Text='<%#Eval("Description") %>' />
                </div>
</div>
                

                    
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
