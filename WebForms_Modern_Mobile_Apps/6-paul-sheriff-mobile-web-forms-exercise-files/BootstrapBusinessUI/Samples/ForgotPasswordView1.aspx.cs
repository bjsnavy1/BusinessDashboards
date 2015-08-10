using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class ForgotPasswordView1 : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnResetPassword_Click(object sender, EventArgs e)
    {
      UserData entity = new UserData();

      entity.Email = txtLoginEmail.Text;

      // Show the message area
      divMessageArea.Visible = true;

      System.Diagnostics.Debugger.Break();
    }
  }
}