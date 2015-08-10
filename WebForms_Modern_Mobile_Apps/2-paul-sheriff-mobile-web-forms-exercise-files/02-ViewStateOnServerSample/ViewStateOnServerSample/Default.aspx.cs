using System;

namespace ViewStateOnServerSample
{
  public partial class Default : AppBasePage
  {
    protected override void OnPreInit(EventArgs e)
    {
      base.OnPreInit(e);
      // Set Property to Store ViewState on Server
      base.StoreViewStateOnServer = true;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
      if (!Page.IsPostBack)
      {
        ViewState["Testing"] = "Testing View State";
      }
    }

    protected void btnViewState_Click(object sender, EventArgs e)
    {
      lblValue.Text = ViewState["Testing"].ToString();
    }
  }
}