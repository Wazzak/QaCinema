using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QaCinemaSite
{
	public partial class MasterPage : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void listingsClick(object sender, EventArgs e)
		{
			Response.Redirect("ListingsPage.aspx");
		}

		protected void newReleaseClick(object sender, EventArgs e)
		{
			Response.Redirect("NewReleasesPage.aspx");
		}

		protected void ticketBookingClick(object sender, EventArgs e)
		{
			Response.Redirect("TicketBookingPage.aspx");
		}

		protected void openingTimesClick(object sender, EventArgs e)
		{
			Response.Redirect("OpeningTimesPage.aspx");
		}

		protected void classificationsClick(object sender, EventArgs e)
		{
			Response.Redirect("ClassificationsPage.aspx");
		}

		protected void placesToGoClick(object sender, EventArgs e)
		{
			Response.Redirect("PlacesToGoPage.aspx");
		}

		protected void gettingThereClick(object sender, EventArgs e)
		{
			Response.Redirect("GettingTherePage.aspx");
		}

		protected void discussionBoardClick(object sender, EventArgs e)
		{
			Response.Redirect("DiscussionPage.aspx");
		}

		protected void aboutUsClick(object sender, EventArgs e)
		{
			Response.Redirect("AboutUsPage.aspx");
		}

		protected void contactUsClick(object sender, EventArgs e)
		{
			Response.Redirect("ContactUsPage.aspx");
		}
	}
}