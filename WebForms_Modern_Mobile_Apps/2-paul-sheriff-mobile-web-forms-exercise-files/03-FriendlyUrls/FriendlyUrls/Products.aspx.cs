using System;
using System.Web.UI;

namespace FriendlyUrls
{
  public partial class Products : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      if (Page.RouteData.Values["ProductId"] != null)
      {
        lblID.Text = Page.RouteData.Values["ProductId"].ToString();
      }
    }
  }
}