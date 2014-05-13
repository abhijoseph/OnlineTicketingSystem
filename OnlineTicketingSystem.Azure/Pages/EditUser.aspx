<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" MasterPageFile="~/Pages/Web.Master" Inherits="OnlineTicketSystem.Azure.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    
    <h3>Edit User</h3>

        <div class="form-horizontal">
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="LblFirst" runat="server" 
                    Text="First  Name   "></asp:Label>
            </div>
            <div class="col-xs-3">
        
            
                <asp:TextBox ID="TxtbxFirst" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtbxFirst" ErrorMessage="Enter username" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
            </div>
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="LblLast" runat="server" 
                    style="font-size: medium; " 
                    Text="Last Name"></asp:Label>
            </div>
            <div class="col-xs-3">
                <asp:TextBox ID="TxtBxLast" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtBxLast" ErrorMessage="Enter Last name" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
             </div>
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="Label13" runat="server" Text="UserName"></asp:Label>
            </div>
            <div class="col-xs-3">
                <asp:TextBox ID="TextBxUsername" runat="server"></asp:TextBox>
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="LblId" runat="server" 
                    style="font-size: medium; " 
                    Text="Email ID"></asp:Label>
           </div>
            <div class="col-xs-3">
                <asp:TextBox ID="TxtEid" runat="server" Width="126px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TxtEid" ErrorMessage="eg: rahul@mail.com" ForeColor="Gray" 
                    style="font-style: italic" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            </div>
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="Label4" runat="server" 
                    style="font-size: medium; ">Password</asp:Label>
                <asp:Label ID="Label10" runat="server" ForeColor="#999999" 
                    style="font-style: italic" Text="(6 to 15 charecter)"></asp:Label>
           </div>
            <div class="col-xs-3">
                <asp:TextBox ID="TxtBxpswd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TxtBxpswd" ErrorMessage="Enter password" 
                    style="font-style: italic"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TxtBxpswd" 
                    ErrorMessage="(Character must be between 6 and 15)" style="font-style: italic" 
                    ValidationExpression="\w{6,15}"></asp:RegularExpressionValidator>
               </div>
        </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="Label5" runat="server" 
                    style="font-size: medium; " 
                    Text="Re-Enter"></asp:Label>
           </div>
            <div class="col-xs-3">
                <asp:TextBox ID="TextBxrenter" runat="server" TextMode="Password" 
                    ></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TxtBxpswd" ControlToValidate="TextBxrenter" 
                    ErrorMessage="Not Matching" style="font-style: italic"></asp:CompareValidator>
           </div>
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Label ID="Label6" runat="server" 
                    style="font-size: medium; " 
                    Text="Date Of Birth"></asp:Label>
           </div>
            <div class="col-xs-3">
                <asp:Label ID="Label7" runat="server" 
                    style="font-size: medium;" Text="Date         "></asp:Label>
                <asp:DropDownList ID="Ddldate" runat="server" >
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label8" runat="server" 
                    style="font-size: medium;" Text="Month"></asp:Label>
&nbsp;<asp:DropDownList ID="Ddlmnth" runat="server">
                    <asp:ListItem Value="jan"></asp:ListItem>
                    <asp:ListItem Value="feb"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label9" runat="server" Text="year"></asp:Label>
                <asp:DropDownList ID="Ddlyr" runat="server" style="margin-left: 22px">
                    <asp:ListItem Value="1991"></asp:ListItem>
                    <asp:ListItem Value="1990"></asp:ListItem>
                    <asp:ListItem Value="1992"></asp:ListItem>
                    <asp:ListItem Value="1993"></asp:ListItem>
                    <asp:ListItem Value="1994"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
             </div>
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                Select Role</div>
            <div class="col-xs-3">
                <asp:DropDownList ID="ddlRoles" runat="server">
                    <asp:ListItem Value="SelectRole"></asp:ListItem>
                    <asp:ListItem Value="TheaterOwner"></asp:ListItem>
                    <asp:ListItem Value="Admin"></asp:ListItem>
                    <asp:ListItem Value="Defualt "></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </div>
        <div class="divider dl-horizontal"></div>
        <div class="form-group">
            <div class="col-xs-2">
                <asp:Button ID="btnUpdate" runat="server" Font-Bold="True" Height="22px" Text="Submit" 
                    Width="96px"  onclick="btnUpdate_Click"/>
                <asp:Label ID="Label11" runat="server" ForeColor="#009900" 
                    style="font-style: italic; font-weight: 700"></asp:Label>
           </div>
            <div class="col-xs-3">

            </div>
        </div>
    </div>
</div>
</asp:Content>
