<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Web.Master" AutoEventWireup="true" CodeBehind="MovieTheaterPage.aspx.cs" Inherits="OnlineTicketingSystem.Azure.Pages.MovieTheaterPage" Culture="auto" UICulture="auto"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        Date.prototype.addDays = function (days) {
            this.setDate(this.getDate() + days);
            return this;
        };
        function dateSelectionChanged(sender, args) {
            var selectedDate = sender.get_selectedDate();
            //var currentDate = new Date();
            //currentDate.setDate(selectedDate);
            // to add 4 days to current date
            selectedDate.addDays(7);
            /* replace this next line with your JS code to get the Sunday date */
            //sundayDate = getSundayDateUsingYourAlgorithm(selectedDate);
            /* this sets the date on both the calendar and textbox */
            var toCalendar = document.getElementById('txtToDate');
            toCalendar.value = dateToMDY(selectedDate);
        }
        function dateToMDY(date) {
            var d = date.getDate();
            var m = date.getMonth() + 1;
            var y = date.getFullYear();
            return '' + (m <= 9 ? '0' + m : m) + '/' + (d <= 9 ? '0' + d : d) + '/' + y;
        }

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
      <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true"
        EnableScriptLocalization="true" ID="ToolkitScriptManager1" CombineScripts="false" />
    <h3>Update Movie Theater</h3>


    <asp:GridView ID="movieTheaterGridView" runat="server" OnRowCancelingEdit="movieTheaterGridView_RowCancelingEdit" OnRowDeleting="movieTheaterGridView_RowDeleting" OnRowUpdating="movieTheaterGridView_RowUpdating" AutoGenerateColumns="False" OnRowEditing="movieTheaterGridView_RowEditing" OnRowDataBound="movieTheaterGridView_RowDataBound" class="table table-striped table-condensed" ShowFooter="True" OnRowCommand="movieTheaterGridView_RowCommand">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                  <ItemTemplate>
                      <asp:LinkButton ID="LBEdit" runat="server" CommandName ="Edit" ValidationGroup="rowEditGroup">Edit</asp:LinkButton>
                      <span onclick="return confirm('Are you sure you want to delete?')">
                            <asp:LinkButton ID="btnDelete" Text="Delete" runat="server" CausesValidation="false" CommandName="Delete" />
                        </span>
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:LinkButton ID="LbUpdate" runat="server" CommandName ="Update" ValidationGroup="rowEditGroup">Update</asp:LinkButton>
                       <asp:LinkButton ID="Lbcancel" runat="server" CommandName ="Cancel" ValidationGroup="rowEditGroup">Cancel</asp:LinkButton>
                  </EditItemTemplate>
         
                 <FooterTemplate>
                    <asp:Button ID="lbInsert" runat="server" CommandName="Insert" Text="Add" ValidationGroup="valGrp"></asp:Button>
                 </FooterTemplate>
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="Movie Show">

                    <ItemTemplate>

                        <asp:Label ID="MovieTheaterKeyLabel" runat="server" Text='<%#Eval("MovieTheaterKey")%>'>

                        </asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Movie Name">
                    <ItemTemplate>
                       <asp:Label ID="lblFirstName" runat="server"
                            Text='<%#Eval("MovieName") %>'></asp:Label>
                    </ItemTemplate> 
                    <EditItemTemplate>
                       <asp:DropDownList ID="movieDropDown" Runat="server" 
                            DataTextField="MovieName" DataValueField="MovieKey" >
                        </asp:DropDownList>    
                    </EditItemTemplate> 
                    <FooterTemplate>
                        <asp:DropDownList ID="addMovieDropDown" Runat="server" 
                            DataTextField="MovieName" DataValueField="MovieKey" >
                        </asp:DropDownList>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Theater Name">

                    <ItemTemplate><%#Eval("TheaterName") %></ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="theaterDropDown" Runat="server" 
                            DataTextField="TheaterName" DataValueField="TheaterKey" >
                        </asp:DropDownList> 
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="addTheaterDropDown" Runat="server" 
                            DataTextField="TheaterName" DataValueField="TheaterKey" >
                        </asp:DropDownList>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="From Date" >

                    <ItemTemplate><%#Eval("FromDateKey") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtFromDate" ValidationGroup="rowEditGroup"/>
                        <ajaxToolkit:CalendarExtender ID="fromCalendar"  runat="server" Format="MM/dd/yyyy" TargetControlID="txtFromDate" />
                        <asp:RequiredFieldValidator ID="Rfdate" runat="server" 
                            ErrorMessage="Select From date" ControlToValidate="txtFromDate"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtFromDateAdd" ValidationGroup="valGrp"/>
                        <ajaxToolkit:CalendarExtender ID="fromCalendarAdd"  runat="server" Format="MM/dd/yyyy" TargetControlID="txtFromDateAdd" />
                        <asp:RequiredFieldValidator ID="RfdateAdd" runat="server" 
                            ErrorMessage="Select From date" ControlToValidate="txtFromDateAdd"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField  HeaderText="To Date">
                   <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtToDate" ClientIDMode="Static" ValidationGroup="rowEditGroup"/>
                        <ajaxToolkit:CalendarExtender ID="toCalendar" ClientIDMode="Static" runat="server" Format="MM/dd/yyyy" TargetControlID="txtToDate"   />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Select To date" ControlToValidate="txtToDate"></asp:RequiredFieldValidator>       
                   </EditItemTemplate>
                   <ItemTemplate>
                       <%#Eval("ToDateKey") %>
                   </ItemTemplate>

                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtToDateAdd" ValidationGroup="valGrp"/>
                        <ajaxToolkit:CalendarExtender ID="toCalendarAdd"  runat="server" Format="MM/dd/yyyy" TargetControlID="txtToDateAdd" />
                        <asp:RequiredFieldValidator ID="RfdateAdd1" runat="server" 
                            ErrorMessage="Select To date" ControlToValidate="txtToDateAdd"></asp:RequiredFieldValidator >
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>


    
</asp:Content>
