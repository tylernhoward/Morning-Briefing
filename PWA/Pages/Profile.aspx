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
    			<p style="margin:5px;">State</p>
                <p style="margin:5px;">Country</p>
    		</div>
    		<div class="col-md-4">
                 <asp:TextBox ID="txtFname" runat="server"></asp:TextBox><br>
                 <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtAdd1" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
    		</div>	
        </div>
		<br>
		<asp:Button Text="Save Info" ID="SendCookie" OnClientClick="setCookie()" OnClick="Page_Load" runat="server" />
    </div>

    <script type="text/javascript">
    function setCookie()
    {
        var value = document.getElementById("ContentPlaceHolder1_lblJSON").innerHTML;
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + 15);
        var c_value = value + "; 
		expires= " + exdate.toUTCString();

        document.cookie = "JSON=" + c_value;
    }
    </script>

</asp:Content>
