<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PWA.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	     <div class="row justify-content-center" >
             <asp:Panel style="clear:both; margin: 10px;" ID="LoginDetails" runat="server" GroupingText="Login">
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
                   <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /></td>
                    <td><asp:RequiredFieldValidator id="passLogRequired" runat="server" 
                         ControlToValidate="txtPassword"
                         ErrorMessage="* Fill this out!" Display="dynamic" />
                    </td>
                </tr>
            </table>
            </asp:Panel>
            <asp:GridView ID="GridView1" runat="server">

            </asp:GridView>

	    </div>
        <div class ="text-center row mx-auto justify-content-center">
        <asp:Button Text="Login" ID="loginBtn" OnClick="Submit_Click" CssClass="btn btn-success" runat="server" />
        </div>

         
        
</asp:Content>
