<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigation.ascx.cs" Inherits="PWA.Controls.Navigation" %>
<nav class="PrimaryNavigation row justify-content-center" >
        <ul>
            <asp:SiteMapDataSource ID="siteMapData" runat="server" ShowStartingNode="false" />
            <asp:Repeater ID="menu" runat="server" DataSourceID="siteMapData">
                <ItemTemplate>
                <li>
                    <a href="<%# Eval("url") %>"><%# Eval("title") %></a>
                </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
</nav>   

