using System;
using System.Collections.Generic;
using PixelMEDIA.SitecoreCMS.Controls.BaseClasses;
using PixelMEDIA.SitecoreCMS.Controls.Extensions;
using PixelMEDIA.SitecoreCMS.Controls.Helpers;

namespace dunkel.web.layouts
{
    public partial class FooterSublayout : SiteBaseNavigationControl
    {
        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);

			List<Sitecore.Data.Items.Item> footerPages = new List<Sitecore.Data.Items.Item>();
			// TODO: Add pages by ID

			rptFooter.DataSource = ItemHelpers.FilterItemsByLanguage(footerPages);
			rptFooter.DataBind();
        }
    }
}