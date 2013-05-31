<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TwoColumnSublayout.ascx.cs"
	Inherits="dunkel.web.layouts.TwoColumnSublayout" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div class="torso">
	<div class="stage">
		<div class="row columns two-col">
			<div class="col-secondary col">
				<sc:Placeholder Key="plLeftColumn" runat="server" />
				<div class="col-secondary-placecontent">&nbsp;</div>
			</div>
			<div class="col-primary col">
				<div class="page-header">
					<h1><sc:FieldRenderer FieldName="pageHeader" runat="server" /></h1>
					<asp:Literal ID="litSubhead" Visible="false" runat="server" />
				</div>
				<sc:Placeholder Key="plBodyColumn" runat="server"></sc:Placeholder>
			</div>
		</div>
	</div> <!-- /.torso -->
</div> <!-- /.stage -->
