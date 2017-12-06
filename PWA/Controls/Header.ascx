<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="PWA.Controls.Header" %>
<div class="row justify-content-between">
    <asp:Label ID="lblHead" Text="Hello " runat="server"></asp:Label>
    <div>
        <a href="/Pages/Login.aspx">Login</a> |
        <a href="/Pages/Register.aspx">Register</a>
    </div>
</div>