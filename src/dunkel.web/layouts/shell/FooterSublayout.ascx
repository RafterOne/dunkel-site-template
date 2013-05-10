<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FooterSublayout.ascx.cs"
    Inherits="dunkel.web.layouts.FooterSublayout" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ Import namespace="PixelMEDIA.SitecoreCMS.Controls.Helpers" %>

<asp:Repeater id="rptFooter" runat="server">
	<ItemTemplate>
		<a href="<%# ItemHelpers.GetItemUrl((Sitecore.Data.Items.Item)Container.DataItem) %>"><%# ItemHelpers.GetLinkDestinationName((Sitecore.Data.Items.Item)Container.DataItem)%></a>
		<%# (Container.ItemIndex < ((IList)rptFooter.DataSource).Count - 1) ? "|" : String.Empty %>
	</ItemTemplate>
</asp:Repeater>