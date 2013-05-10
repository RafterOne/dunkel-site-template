<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="LeftNavFixedRootParentChildrenSublayout.ascx.cs" Inherits="dunkel.web.layouts.navigation.LeftNavFixedRootParentChildrenSublayout" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ Import namespace="PixelMEDIA.SitecoreCMS.Controls.Helpers" %>

<div class="nav-secondary">
	<div class="nav-header">
		<span>
        	<% if (ItemHelpers.HasLayout(this.RootItem))
			{ %>
			<a class="nav-secondary-title" href="<%= ItemHelpers.GetItemUrl(this.RootItem) %>"><%= ItemHelpers.GetLinkDestinationName(this.RootItem)%></a>
			<% } else { %>
			<%= ItemHelpers.GetLinkDestinationName(this.RootItem)%>
			<% } %>
        </span>
	</div>
	<ul class="nav-items">
		<asp:Repeater ID="rptLevelOne" runat="server">
			<ItemTemplate>
				<li>
					<a href="<%# ItemHelpers.GetItemUrl((Sitecore.Data.Items.Item)Container.DataItem) %>" class="<%# (this.IsSelected((Sitecore.Data.Items.Item)Container.DataItem) ? "selected" : String.Empty) %>">
					<%# ItemHelpers.GetLinkDestinationName((Sitecore.Data.Items.Item)Container.DataItem)%>
					</a>
				</li>
			</ItemTemplate>
		</asp:Repeater>
	</ul> <!-- /.nav-parent -->
</div><!-- /.nav-secondary -->