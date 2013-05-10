<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="HeaderSublayout.ascx.cs"
	Inherits="dunkel.web.layouts.HeaderSublayout" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ Register TagPrefix="pxl" namespace="PixelMEDIA.Controls" assembly="PixelMEDIA.Controls" %>
<%@ Import namespace="PixelMEDIA.SitecoreCMS.Controls.Helpers" %>

<div class="utility-bar">
	<div id="nav-utility">
		<asp:Repeater ID="rptHeaderItems" runat="server">
			<HeaderTemplate>
				<ul>
			</HeaderTemplate>
			<ItemTemplate>
				<li><a href="<%# ItemHelpers.GetItemUrl((Sitecore.Data.Items.Item)Container.DataItem) %>"
					class="<%# (IsSelected((Sitecore.Data.Items.Item)Container.DataItem) ? "selected" : String.Empty) %>">
					<%# ItemHelpers.GetLinkDestinationName((Sitecore.Data.Items.Item)Container.DataItem)%></a></li>
			</ItemTemplate>
			<FooterTemplate>
				</ul>
			</FooterTemplate>
		</asp:Repeater>
	</div>
</div> <!-- /#utility-bar -->
