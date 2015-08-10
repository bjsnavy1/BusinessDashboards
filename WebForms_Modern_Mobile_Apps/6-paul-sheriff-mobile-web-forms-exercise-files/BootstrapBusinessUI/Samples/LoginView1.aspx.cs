using System;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class LoginView1 : System.Web.UI.Page
  {   
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
      UserData entity = new UserData();

      if (Page.IsValid)
      {
        entity.Email = txtLoginEmail.Text;
        entity.Password = txtLoginPassword.Text;

        // Show the message area
        divMessageArea.Visible = true;
      }

      System.Diagnostics.Debugger.Break();
    }
  }
}