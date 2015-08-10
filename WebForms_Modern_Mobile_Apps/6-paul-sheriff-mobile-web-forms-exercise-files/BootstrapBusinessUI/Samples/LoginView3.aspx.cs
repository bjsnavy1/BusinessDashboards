using System;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class LoginView3 : System.Web.UI.Page
  {
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
      UserData entity = new UserData();

      entity.Email = txtLoginEmail.Text;
      entity.Password = txtLoginPassword.Text;
      entity.IsRememberMeChecked = chkRememberMe.Checked;

      // Show the message area
      divMessageArea.Visible = true;

      System.Diagnostics.Debugger.Break();
    }
  }
}