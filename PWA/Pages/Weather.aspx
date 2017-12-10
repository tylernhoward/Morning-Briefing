<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="PWA.Pages.Weather" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id = "tblWeather" runat="server" visible="false" class="text-center">
        <h3>Weather Information</h3>
		<div class="row justify-content-center">
			<div class="card border-warning" >
                <div class="card-body" style="margin-left:100px;margin-right:100px;">
                    <div class="">
                        <asp:Image ID="imgWeatherIcon" runat="server" />
                        <asp:Label ID="lblCity_Country" runat="server" />
                        <asp:Image ID="imgCountryFlag" runat="server" />
                        <p>Currently: <asp:Label ID="lblDescription" runat="server" /></p>
                    </div>
					<hr>
                    <div class="">
                        <p>Temperature:</p> 
                        <p>Min: <asp:Label ID="lblTempMin" runat="server" /></p>
                        <p>Max: <asp:Label ID="lblTempMax" runat="server" /></p>
                        <p>Day: <asp:Label ID="lblTempDay" runat="server" /></p>
                        <p>Night: <asp:Label ID="lblTempNight" runat="server" /></p>
                    </div>
				</div>
            </div>
        </div>
	</div>
	<hr>
	<div class="row justify-content-center" >
        <asp:TextBox ID="txtCity" runat="server" Text="" />
		<br>
        <asp:Button Text="Get Weather Information" runat="server" OnClick="GetWeatherInfo" />
	</div>

</asp:Content>
