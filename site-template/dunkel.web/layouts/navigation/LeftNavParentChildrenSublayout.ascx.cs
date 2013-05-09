using System;
using PixelMEDIA.SitecoreCMS.Controls.BaseClasses;
using PixelMEDIA.SitecoreCMS.Controls.Helpers;
using Sitecore.SharedSource.Web.UI.Sublayouts;

namespace dunkel.web.layouts.navigation
{
    /// <summary>
    /// A simple navigation control that displays the specified item as the root of a navigation tree,
    /// and then lists links to its immediate children
    /// </summary>
	public partial class LeftNavParentChildrenSublayout : SiteBaseNavigationControl
    {
        protected Sitecore.Data.Items.Item RootItem { get; set; }

        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);

            bool isParentRoot = false;

            SublayoutParameterHelper subHelper = new SublayoutParameterHelper(this, false);
            String parameter = subHelper.GetParameter("IsParentRoot");

            // Checkbox values are 0 == noet checked, 1 == checked
            if (parameter.Equals("1")) isParentRoot = true;

            if (isParentRoot)
            {
                this.RootItem = Sitecore.Context.Item.Parent;
            }
            else
            {
                this.RootItem = Sitecore.Context.Item;
            }
			rptLevelOne.DataSource = ItemHelpers.FilterChildListByLanguage(this.RootItem.Children);
            rptLevelOne.DataBind();
        }
    }
}