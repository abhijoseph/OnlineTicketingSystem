<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetLatestMovies.aspx.cs"  MasterPageFile="~/Pages/Web.Master" Inherits="OnlineTicketSystem.Azure.GetLatestMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
  <h3>Latest Movies</h3>
    <asp:Repeater ID="eNewsRepeater" runat="server" >
        
        <HeaderTemplate>
            <div class="row">
            </HeaderTemplate>
      
            <ItemTemplate>
                
            <div class="col-md-4">
                <div class="movie-item">
                <h4>
                    <asp:Label ID="lblMovieName" runat="server" Text='<%#Eval("MovieName") %>'/>
                    </h4>
                <div class="col-sm-2">
                <img src="../Images/Movie.png" style="width:100px"/>
                    </div>  
                <div class="col-sm-10">
                    <dl class="dl-horizontal">
                        
                        <dt>Star Cast</dt>
                        
                        
                        <dd>
                             <asp:Label ID="Label1" runat="server" Text='<%#Eval("Actor") %>'/>,&nbsp;
               
                    <asp:Label ID="lblActress" runat="server" Text='<%#Eval("Actress") %>'/>
                        </dd>
                        <dt>
                            Director
                        </dt>
                        <dd>
                            <asp:Label ID="LblDirector" runat="server" Text='<%#Eval("Director") %>'/>
                        </dd>
                        <dt>
                            Language
                        </dt>
                        <dd>
                            <asp:Label ID="LblLanguage" runat="server" Text='<%#Eval("Language") %>'/>
                        </dd>
                    </dl>
                    </div>
                       <a class="btn btn-info pull-right">Review</a>
                
                    
                </div>
                    
               </div>
            
            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
    </asp:Repeater>
  
  
  
  </asp:Content>