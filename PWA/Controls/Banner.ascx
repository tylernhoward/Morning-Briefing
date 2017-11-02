<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" Inherits="PWA.Controls.Banner" %>
<%@ Register Src="Navigation.ascx" TagName="Navigation" TagPrefix ="ucNav"%>

<asp:Label ID="lblBan" Text="" runat="server" CssClass= "row justify-content-center"></asp:Label>
<br>
<asp:Label ID="lblTime" Text="" runat="server" CssClass= "row justify-content-center"></asp:Label>
<asp:Image id="timeImage" runat="server" CssClass= "row justify-content-center"></asp:Image>
<nav><ucNav:Navigation ID="Navigation" runat="server" /></nav>
