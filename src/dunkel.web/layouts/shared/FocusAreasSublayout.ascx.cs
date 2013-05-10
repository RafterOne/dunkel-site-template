using System;
using System.Linq;
using Sitecore.Layouts;
using Sitecore.Web.UI.WebControls;
using PixelMEDIA.SitecoreCMS.Controls.Helpers;
using PixelMEDIA.SitecoreCMS.Controls.BaseClasses;

namespace dunkel.web.layouts.shared
{
    /// <summary>
    /// A sublayout to display the focus areas attached to the current item
    /// </summary>
    public partial class FocusAreasSublayout : SiteBaseUserControl
    {
        protected override void Page_Load(object sender, EventArgs e)
        {
            var item = Sitecore.Context.Item;
            if (null != item && null != item.Fields["focusAreas"])
            {
                var focusAreas = ItemHelpers.GetItemsFromStringOfGuids(item.Fields["focusAreas"].Value);
                if (null != focusAreas) {
                    foreach (Sitecore.Data.Items.Item focusArea in focusAreas)
                    {
                        var sublayout = ItemHelpers.GetSublayoutForItem(focusArea);
                        if (null != sublayout) plFocusAreas.Controls.Add(sublayout);
                    }
                }
            }
        }
    }
}