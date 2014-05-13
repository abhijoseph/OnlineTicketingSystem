<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Web.Master" AutoEventWireup="true" CodeBehind="CancelTickets.aspx.cs" Inherits="OnlineTicketingSystem.Azure.Pages.CancelTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <h3>Cancel Tickets</h3>
    <div class="form-horizontal">
    <div class="form-group">
            <asp:GridView ID="cancelTicketGridView" runat="server"  AutoGenerateColumns="False" class="table table-striped table-condensed" ShowFooter="False" OnRowCommand="cancelTicketGridView_RowCommand">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                      <ItemTemplate>
                          
                          <span onclick="return confirm('Are you sure you want to Cancel?')">
                                <asp:LinkButton ID="btnCancel" Text="Cancel" runat="server" CausesValidation="false" CommandName="Cancel" />
                            </span>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="TicketKey" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lblTicketKey" runat="server" Text='<%#Eval("TicketKey")%>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Theater">
                    <ItemTemplate>
                        <asp:Label ID="lblTheaterName" runat="server" Text='<%#Eval("TheaterName")%>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Movie">
                    <ItemTemplate>
                       <asp:Label ID="lblFirstName" runat="server" Text='<%#Eval("MovieName") %>'></asp:Label>
                    </ItemTemplate>                     
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                       <asp:Label ID="lblDate" runat="server" Text='<%#Eval("Date") %>'></asp:Label>
                    </ItemTemplate>                     
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Show Time">
                    <ItemTemplate>
                       <asp:Label ID="lblTime" runat="server" Text='<%#Eval("Time") %>'></asp:Label>
                    </ItemTemplate>                     
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Seats">
                    <ItemTemplate>
                       <asp:Label ID="lblSeats" runat="server" Text='<%#Eval("Seat") %>'></asp:Label>
                    </ItemTemplate>                     
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No Of Seats">
                    <ItemTemplate>
                       <asp:Label ID="lblNoSeats" runat="server" Text='<%#Eval("NoOfSeats") %>'></asp:Label>
                    </ItemTemplate>                     
                </asp:TemplateField>
                </Columns>
          </asp:GridView>

            
    </div>
    <%--<div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="Label4" runat="server" Text="Savitha "></asp:Label>
            </div>
        <div class="col-xs-2">
                <asp:Label ID="Label5" runat="server" Text="London Bridge"></asp:Label>
            </div>
        <div class="col-xs-2">
                <asp:Label ID="Label6" runat="server" Text="4 Seats"></asp:Label>
            </div>
            <div class="col-xs-1">
                <asp:Button ID="Button1" runat="server" class="form-control"  Text="Cancel"></asp:Button>
            </div>
            
        </div>--%>
        </div>
</asp:Content>
