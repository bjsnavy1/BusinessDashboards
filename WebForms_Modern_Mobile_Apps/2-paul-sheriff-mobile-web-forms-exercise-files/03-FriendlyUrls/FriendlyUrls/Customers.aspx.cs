using System;
using System.Web.UI;
using Microsoft.AspNet.FriendlyUrls;

namespace FriendlyUrls
{
  public partial class Customers : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      // Check for a specific customer id to display
      if (Page.RouteData.Values["CustomerId"] != null)
      {
        lblID.Text = Page.RouteData.Values["CustomerId"].ToString();
      }

      // Same as checking for a specific customer id
      if(Request.GetFriendlyUrlSegments().Count > 0)
      {
        lblID.Text = Request.GetFriendlyUrlSegments()[0];
      }

      // Check to see if someone is requesting only deleted customers
      if (GetFriendlyUrlPath() == "DeletedCustomers")
      {
        // Show just the Deleted Customers
      }
    }

    public string GetFriendlyUrlPath()
    {
      string ret = string.Empty;

      if (!string.IsNullOrEmpty(Request.Url.PathAndQuery))
      {
        ret = Request.Url.PathAndQuery.Substring(1);
      }

      return ret;
    }
  }
}