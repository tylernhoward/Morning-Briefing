<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="PWA.Pages.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:ListView ID="newsList" runat="server">
    <LayoutTemplate>
        <ul>
            <asp:PlaceHolder ID="itemPlaceholder" runat="server" />    
        </ul>                
    </LayoutTemplate>
    <ItemTemplate>
            <a href="<%#Eval("url")%>" style="text-decoration:none; color: black;">
                <div class="media">
                    <img class="img-fluid img-thumbnail d-flex mr-3 col-md-4" src="<%#Eval("urlToImage")%>" alt="news image">
                    <div class="media-body">
                        <h5 class="mt-0"><%#Eval("title")%></h5>
    				    <small>from: <%#Eval("author")%></small>
                        <p><%#Eval("description")%></p>               
    				</div>
                </div>
			</a>
			<hr>
    </ItemTemplate>
    <EmptyDataTemplate>
        <p>Nothing here.</p>
    </EmptyDataTemplate>
</asp:ListView>
</asp:Content>
