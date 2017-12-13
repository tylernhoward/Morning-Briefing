<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigation.ascx.cs" Inherits="PWA.Controls.Navigation" %>

<div class ="row text-center mx-auto">
    <nav class="PrimaryNavigation">
        <ul>
            <asp:SiteMapDataSource ID="siteMapData" runat="server" ShowStartingNode="false" />
            <asp:Repeater ID="menu" runat="server" DataSourceID="siteMapData">
                <ItemTemplate>
                <li >
                    <a class="text-center btn btn-lg" href ="<%# Eval("url") %>"><%# Eval("title") %></a>
                </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
</nav>   
</div>
<hr>


