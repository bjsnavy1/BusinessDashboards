using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class WizardView : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
      UserData entity = new UserData();

      entity.Email = txtEmail.Text;
      entity.FirstName = txtFirstName.Text;
      entity.LastName = txtLastName.Text;
      entity.Password = txtPassword.Text;
      entity.SecurityQuestion = txtSecurityQuestion.Text;
      entity.SecurityAnswer = txtSecurityAnswer.Text;

      divMessageArea.Visible = true;

      System.Diagnostics.Debugger.Break();
    }
  }
}