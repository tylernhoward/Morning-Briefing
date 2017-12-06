<%@ Control Language="C#" Inherits="PWA.Controls.Clock" %>

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>

<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional"> 
    <Triggers>
        <asp:AsyncPostBackTrigger  ControlID="Timer1" EventName="Tick" />
    </Triggers>
    <ContentTemplate> 
		<asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
        </asp:Timer>  
        <asp:Label id="lblClockTime" runat="server"/>
    </ContentTemplate> 
</asp:UpdatePanel> 

