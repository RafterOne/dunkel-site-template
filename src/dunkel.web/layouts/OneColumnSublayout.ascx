<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OneColumnSublayout.ascx.cs" Inherits="dunkel.web.layouts.OneColumnSublayout" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div class="torso">
	<div class="stage">
		<div class="columns row">
			<div class="col-primary col">
				<div class="page-header">
					<h1><sc:FieldRenderer FieldName="pageHeader" runat="server" /></h1>
					<asp:Literal ID="litSubhead" Visible="false" runat="server" />
				</div>
				<sc:placeholder key="plBodyColumn" runat="server" />
			</div>
		</div>
	</div> <!-- /.stage -->
</div> <!-- /.torso -->


