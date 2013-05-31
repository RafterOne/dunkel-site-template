using System;
using PixelMEDIA.SitecoreCMS.Controls.BaseClasses;

namespace dunkel.web.layouts
{
	public partial class TwoColumnSublayout : SiteBaseUserControl
	{
		

		protected override void Page_Load(object sender, EventArgs e)
		{
			base.Page_Load(sender, e);

			if (base.ParentPage.Subhead != null && !String.IsNullOrEmpty(base.ParentPage.Subhead))
			{
				this.litSubhead.Text = String.Format("<div class=\"subhead\">{0}</div>", base.ParentPage.Subhead);
				this.litSubhead.Visible = true;
			}
		}
	}
}