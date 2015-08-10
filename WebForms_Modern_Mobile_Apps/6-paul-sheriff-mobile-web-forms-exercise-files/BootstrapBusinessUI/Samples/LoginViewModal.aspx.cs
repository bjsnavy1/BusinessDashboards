using System;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class LoginViewModal : System.Web.UI.Page
  {
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
      UserData entity = new UserData();

      entity.Email = txtLoginEmail.Text;
      entity.Password = txtLoginPassword.Text;
      
      System.Diagnostics.Debugger.Break();
    }
  }
}