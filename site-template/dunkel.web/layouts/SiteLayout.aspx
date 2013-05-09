<%@ Page Language="c#" AutoEventWireup="true" Inherits="dunkel.web.layouts.SiteLayout"
	CodeBehind="SiteLayout.aspx.cs" %>

<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ OutputCache Location="None" VaryByParam="none" %>
<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
	<title>
		<%= base.GetPageTitle() %></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta charset="utf-8" />
	<meta name="robots" content="all" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<link rel="stylesheet" href="/css/screen.css" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="/css/content.css" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="/css/print.css" type="text/css" media="print" />
	<!--[if lt IE 8]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->

	
	<script src="/script/libs/modernizr.custom.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/libs/jquery-1.8.2.min.js"><\/script>')</script>
	<%--hack to fix Sitecore's preview mode--%>
	<script>
		$jQuery = jQuery;
	</script>


	<sc:VisitorIdentification runat="server" />

	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />
</head>


<body class="<%= BodyClass %>">

	<form method="post" runat="server" id="mainform">
	<asp:ScriptManager ID="scriptManager" runat="server" />
	<div id="header">
		<div class="stage">
			<sc:Sublayout Path="shell/HeaderSublayout.ascx" runat="server" />
		</div>
	</div>
	<!-- /div#header -->
	
	<sc:Placeholder Key="plContentPlaceholder" runat="server" />

	<div id="footer">
		<%--div.stage--%>
		<sc:Sublayout Path="shell/FooterSublayout.ascx" runat="server" />
	</div>
	<!-- /div.footer -->
	</form>

	<%--hack to fix sitecore's preview mode --%>
	<script>
		jQuery = $jQuery;
	</script>

	
	<!-- TODO: Analytics -->

</body>
</html>
