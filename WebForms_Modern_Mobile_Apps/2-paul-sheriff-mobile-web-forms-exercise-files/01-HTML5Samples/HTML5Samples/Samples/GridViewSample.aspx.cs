using System;
using System.Diagnostics;
using System.Web.UI.WebControls;

namespace HTML5Samples.Samples
{
  public partial class GridViewSample : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void grdProducts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      int ProductId;

      // NOTE: SelectedRow will be null if ViewState is disabled
      GridViewRow row = grdProducts.SelectedRow;

      // However, you can build your own button to select and fill in the e.CommandArgument
      if (e.CommandName == "ProductSelect")
      {
        ProductId = Convert.ToInt32(e.CommandArgument);
      }

      Debug.WriteLine("Postback happened.");
    }
  }
}