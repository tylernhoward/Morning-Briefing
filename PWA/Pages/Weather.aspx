<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="PWA.Pages.Weather" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:TextBox ID="txtCity" runat="server" Text="" />
    <asp:Button Text="Get Weather Information" runat="server" OnClick="GetWeatherInfo" />
    <hr />
    <table id="tblWeather" runat="server" border="0" cellpadding="0" cellspacing="0"
        visible="false">
        <tr>
            <th colspan="2">
                Weather Information
            </th>
        </tr>
        <tr>
            <td rowspan="3">
                <asp:Image ID="imgWeatherIcon" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity_Country" runat="server" />
                <asp:Image ID="imgCountryFlag" runat="server" />
                <asp:Label ID="lblDescription" runat="server" />
                Humidity:
                <asp:Label ID="lblHumidity" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Temperature:
                (Min:
                <asp:Label ID="lblTempMin" runat="server" />
                Max:
                <asp:Label ID="lblTempMax" runat="server" />
                    Day:
                <asp:Label ID="lblTempDay" runat="server" />
                    Night:
                <asp:Label ID="lblTempNight" runat="server" />)
            </td>
        </tr>
    </table>
</asp:Content>
