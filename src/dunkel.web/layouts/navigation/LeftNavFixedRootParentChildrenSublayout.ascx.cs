using System;
using PixelMEDIA.SitecoreCMS.Controls.BaseClasses;
using PixelMEDIA.SitecoreCMS.Controls.Helpers;
using Sitecore.SharedSource.Web.UI.Sublayouts;
using Sitecore.Data.Items;

namespace dunkel.web.layouts.navigation
{
    /// <summary>
    /// A simple parent/child navigation control that sets the root to an item specified in the presentation detail parameters
    /// </summary>
	public partial class LeftNavFixedRootParentChildrenSublayout : SiteBaseNavigationControl
    {
        protected Item RootItem { get; set; }

        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
           
            SublayoutParameterHelper subHelper = new SublayoutParameterHelper(this, false);

			// Get the root item
            String parameter = subHelper.GetParameter("RootItem");
            if (!String.IsNullOrEmpty(parameter))
            {
                Guid rootItemGuid = new Guid(parameter);
                if (!rootItemGuid.Equals(Guid.Empty))
                {
                    // Only populate the nav if the root item has been specified
                    this.RootItem = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID(rootItemGuid));

                    if (null != this.RootItem)
                    {
						rptLevelOne.DataSource = ItemHelpers.FilterChildListByLanguage(this.RootItem.Children);
                        rptLevelOne.DataBind();
                    }
                }
            }
        }
    }
}