<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PWA.Default" %>
<%@ Register Src="/Controls/MiniWeather.ascx" TagName="mWeather" TagPrefix ="ucMiniWeather"%>
<%@ Register Src="/Controls/MiniNews.ascx" TagName="mNews" TagPrefix ="ucMiniNews"%>
<%@ Register Src="/Controls/MiniTasks.ascx" TagName="mTasks" TagPrefix ="ucMiniTasks"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br>
	<hr>
	<ucMiniWeather:mWeather ID="Weather" runat="server" />
	<hr>
	<ucMiniNews:mNews ID="News" runat="server" />
	<hr>
	<ucMiniTasks:mTasks ID="Tasks" runat="server" />
</asp:Content>
