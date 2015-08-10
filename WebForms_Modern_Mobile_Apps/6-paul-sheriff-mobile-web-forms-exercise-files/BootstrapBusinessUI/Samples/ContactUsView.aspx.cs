using System;
using System.Web.UI;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class ContactUsView : System.Web.UI.Page
  {
    private const string URL_START = "http://www.";

    protected void Page_Load(object sender, EventArgs e)
    {
      if (!Page.IsPostBack)
      {
        txtUrl.Text = URL_START;
      }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
      ContactUs entity = new ContactUs();

      entity.Name = txtName.Text;
      entity.Email = txtEmail.Text;
      if (txtUrl.Text.Trim() != URL_START)
        entity.Url = txtUrl.Text;
      entity.Message = txtMsg.Text;

      // Show the message area
      divMessageArea.Visible = true;

      System.Diagnostics.Debugger.Break();
    }
    
    protected void btnCancel_Click(object sender, EventArgs e)
    {
      Response.Redirect("Home.aspx");
    }
  }
}