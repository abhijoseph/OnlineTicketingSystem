<%@ Page Language="C#" AutoEventWireup="true" Inherits="OnlineTicketSystem.Azure.Ticket" MasterPageFile="~/Pages/Web.Master"  Codebehind="Ticket.aspx.cs" Culture="auto" UICulture="auto"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

    <asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript">
    var seatMatrix = [];
    function SelectCell(celltd) {
        //alert('hi');
        var selectedItemId = $(celltd).html();
        if (isSeatSelected(selectedItemId) || isInMySeat(selectedItemId)) {
            //$(celltd).css("background-color", "white");
            $(celltd).addClass('seat-unselected');
            removeSeat(selectedItemId);
        }
        else {
            //$(celltd).css("background-color", "green");
            $(celltd).attr('class', 'seat-selected');
            seatMatrix.push(selectedItemId);
        }


        //      var tableRows = oDataGrid.rows;
        //      var rawDataRows = new Array();
        //      //somewhere to put the actual data
        //      for (var i = 0; i < tableRows.length; i++) {
        //         var thisRow = tableRows[i];
        //         for (var j = 0; j < thisRow.cells.length; j++) {
        //            alert(oDataGrid.rows(i).cells(j).innerHTML);
        //            }
        //         }
    }

    function isSeatSelected(seatId) {
        var searchedItem = $.grep(seatMatrix, function (item) {
            if (item == seatId) return true;
        });
        return searchedItem.length > 0;
    }

    function isInMySeat(seatId) {
        var hiddenMySeats = document.getElementById("<%= hiddenMySeats.ClientID %>");

        var mySeatsMatrix = hiddenMySeats.value.split(",");
        var searchedItem = $.grep(mySeatsMatrix, function (item) {
            if (item == seatId) return true;
        });
        return searchedItem.length > 0;
    }

    function removeSeat(seatId) {
        var seatIndex = $.inArray(seatId, seatMatrix);
        seatMatrix.splice(seatIndex, 1);

        var hiddenMySeats = document.getElementById("<%= hiddenMySeats.ClientID %>");

        var mySeatsMatrix = hiddenMySeats.value.split(",");
        var mySeatIndex = $.inArray(seatId, mySeatsMatrix);
        mySeatsMatrix.splice(mySeatIndex, 1);
        document.getElementById("<%= hiddenMySeats.ClientID %>").value = mySeatsMatrix;
    }

    function setSeatMatrix() {
        var hiddenSM = document.getElementById("<%= hiddenSeatMatrix.ClientID %>");
        var hiddenMySeats = document.getElementById("<%= hiddenMySeats.ClientID %>");
        var mySeatsMatrix = hiddenMySeats.value.split(",");

        var mergedSeatMatrix = $.merge($.merge([], seatMatrix), mySeatsMatrix);
        var finalSeatMatrix = $.unique(mergedSeatMatrix).sort();
        hiddenSM.value = finalSeatMatrix;
    }

    $(function () {
        //var oDataGrid = document.getElementById("<%= seatSelectionGrid.ClientID %>")
        //$(oDataGrid).css("cursor", "pointer");
    });
   </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true"
        EnableScriptLocalization="true" ID="ToolkitScriptManager1" CombineScripts="false" />
<asp:HiddenField runat="server" ID="hiddenSeatMatrix" />
<asp:HiddenField runat="server" ID="hiddenMySeats" />
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
               <%-- <asp:TextBox ID="Txtbxdate" runat="server" style="text-align: center"></asp:TextBox>--%>
                
                <asp:TextBox runat="server" ID="txtDate" />
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="MM/dd/yyyy" TargetControlID="txtDate" StartDate="8/3/2010" EndDate="10/7/2010" SelectedDate="8/3/2010" />
                <asp:RequiredFieldValidator ID="Rfdate" runat="server" 
                    ErrorMessage="Select date" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
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
        <%--<tr>
            <td class="style2">
                <asp:Label ID="lblseat" runat="server" Text="No:of  Seats"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="Txtbxseat" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="seat" runat="server" 
                    ErrorMessage="Enter no:of seats" ControlToValidate="Txtbxseat"></asp:RequiredFieldValidator>
            </td>
        </tr>--%>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="btnGetSeats" runat="server" onclick="btnGetSeats_Click" 
                    Text="Get Seats" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Btnselect" runat="server" Text="Select your seat" 
                    onclick="Btnselect_Click" />
            </td>
            <td class="style6">
                <asp:GridView ID="seatSelectionGrid" runat="server" class="seatselection-grid" CellPadding="1" CellSpacing="1"
                    Height="172px" Visible="True" onrowdatabound="GridView1_RowDataBound">
                </asp:GridView>
                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>--%>
            </td>
        </tr>

        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
               <asp:Button ID="BtCnfirm" runat="server" Text="Confirm" 
                  OnClientClick="javascript:setSeatMatrix();"  onclick="BtCnfirm_Click" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>
