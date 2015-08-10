using System;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class SignupView1 : System.Web.UI.Page
  {
    protected void btnRegister_Click(object sender, EventArgs e)
    {
      UserData entity = new UserData();

      entity.FirstName = txtFirst.Text;
      entity.LastName = txtLast.Text;
      entity.Email = txtEmail.Text;
      entity.Password = txtPassword.Text;
      entity.IsAgreeToTermsChecked = true;

      // Show the message area
      divMessageArea.Visible = true;

      System.Diagnostics.Debugger.Break();
    }
  }
}