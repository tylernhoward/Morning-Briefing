<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PWA.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	</asp:Panel>
         <asp:Panel style="clear:both; margin: 10px; background-color: whitesmoke;" ID="ContactDetails" runat="server" GroupingText="Login" Width="800px">
         <table>
            <tr>
               <td><asp:Label ID="lblUser" style="color:Black" 
               Text="User: " runat="server" /></td>
               <td><asp:TextBox ID="txtUser" runat="server" /></td>
                <td><asp:RequiredFieldValidator id="userLogRequired" runat="server" 
                     ControlToValidate="txtUser"
                     ErrorMessage="* Fill this out!" Display="dynamic" />
                </td>
            </tr>
            <tr>
               <td><asp:Label ID="lblPassword" style="color:Black" 
               Text="Password: " runat="server" /></td>
               <td><asp:TextBox ID="txtPassword" runat="server" /></td>
				<td><asp:RequiredFieldValidator id="passLogRequired" runat="server" 
                     ControlToValidate="txtPassword"
                     ErrorMessage="* Fill this out!" Display="dynamic" />
                </td>
            </tr>
        </table>
        </asp:Panel>
        <asp:Button Text="Login" ID="loginBtn" OnClick="Page_Load" runat="server" />
</asp:Content>
