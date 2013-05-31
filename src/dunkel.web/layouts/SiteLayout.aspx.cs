using System;
using System.Web.UI;
using PixelMEDIA.SitecoreCMS.Controls.Extensions;
using PixelMEDIA.SitecoreCMS.Controls.BaseClasses;

namespace dunkel.web.layouts
{
    public partial class SiteLayout : SiteBasePage
	{
		protected override void Page_Load(object sender, System.EventArgs e)
		{
            base.Page_Load(sender, e);
			Page.MetaKeywords = Sitecore.Context.Item["metaKeywords"];
			Page.MetaDescription = Sitecore.Context.Item["metaDescription"];
		}
	}
}