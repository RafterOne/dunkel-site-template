using System;
using System.Collections.Generic;
using System.Linq;
using PixelMEDIA.SitecoreCMS.Controls.BaseClasses;
using PixelMEDIA.SitecoreCMS.Controls.Extensions;
using Sitecore.Collections;
using Sitecore.Data.Items;
using Sitecore.Sites;
using Sitecore.Web;
using Sitecore.Globalization;
using PixelMEDIA.SitecoreCMS.Controls.Helpers;

namespace dunkel.web.layouts
{
	public partial class HeaderSublayout : SiteBaseNavigationControl    
    {
        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);

            // Populate the top nav links
            List<Sitecore.Data.Items.Item> generalPages = new List<Sitecore.Data.Items.Item>();

			// TODO: Add links by ID
            
            rptHeaderItems.DataSource = ItemHelpers.FilterItemsByLanguage(generalPages);
            rptHeaderItems.DataBind();
        }
    }
}