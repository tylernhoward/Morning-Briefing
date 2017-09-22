<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" Inherits="PWA.Controls.Banner" %>
<%@ Register Src="Navigation.ascx" TagName="Navigation" TagPrefix ="ucNav"%>

<asp:Label ID="lblBan" Text="Banner Text" runat="server"></asp:Label>
<nav><ucNav:Navigation ID="Navigation" runat="server" /></nav>
