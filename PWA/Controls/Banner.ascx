<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" Inherits="PWA.Controls.Banner" %>
<%@ Register Src="Navigation.ascx" TagName="Navigation" TagPrefix ="ucNav"%>
<%@ Register Src="~/Controls/Clock.ascx" TagName="Clock" TagPrefix ="ucClock"%>


<h1><asp:Label ID="lblBan" Text="" runat="server" CssClass= "row justify-content-center"></asp:Label></h1>
<div class="row justify-content-center"><i class="fa fa-sun-o" aria-hidden="true" style="margin: 20px; font-size:100pt;"></i></div>
<h3 class="row justify-content-center">
    <asp:Label ID="lblTime" Text="" runat="server"></asp:Label>	
    &nbsp;<ucClock:Clock id="clock" runat="server"/>&nbsp;
    <asp:Label ID="lblLocation" Text="" runat="server"></asp:Label>
</h3>


<nav><ucNav:Navigation ID="Navigation" runat="server" /></nav>
