<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="PWA.Pages.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
	<h4>Edit your information</h4>
		<br>
        <div class="text-center row mx-auto" >
    		<div class="col-md-4 text-right">
                <p style="margin:5px;">First Name</p>
    			<p style="margin:5px;">Last Name</p>
    			<p style="margin:5px;">Address</p>
    			<p style="margin:5px;">City</p>
    			<p style="margin:5px;">Suburb</p>
                <p style="margin:5px;">Country</p>
                <p style="margin:5px;">News Source</p>
    		</div>
    		<div class="col-md-4">
                 <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtAdd1" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtSuburb" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                <asp:DropDownList ID="ddNews" runat="server">
                    <asp:ListItem Text="BBC News" Value="bbc-news"></asp:ListItem>
                    <asp:ListItem Text="CNN" Value="cnn"></asp:ListItem>
                    <asp:ListItem Text="New York Times" Value="the-new-york-times"></asp:ListItem>
                    <asp:ListItem Text="Fox News" Value="fox-news"></asp:ListItem>
                </asp:DropDownList>
    		</div>	
        </div>
		<br>
		<asp:Button CssClass="btn btn-success" Text="Save Info" ID="SendCookie"  OnClick="Submit_Click" runat="server" />
		<br />
        <br />
        <hr />
        <asp:Button CssClass="btn btn-danger" Text="Logout" ID="Logout" OnClick="Logout_Click" runat="server" />
        
    </div>

</asp:Content>
