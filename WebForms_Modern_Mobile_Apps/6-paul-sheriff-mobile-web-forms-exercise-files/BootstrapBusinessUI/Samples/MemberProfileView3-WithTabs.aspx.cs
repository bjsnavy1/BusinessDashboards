using System;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class MemberProfileView3_WithTabs : System.Web.UI.Page
  {
    protected void btnSave_Click(object sender, EventArgs e)
    {
      UserData entity = new UserData();

      entity.FirstName = txtFirst.Text;
      entity.LastName = txtLast.Text;
      entity.Street1 = txtStreet1.Text;
      entity.Apartment = txtApt.Text;
      entity.City = txtCity.Text;
      entity.State = ddlState.SelectedValue;
      if(!string.IsNullOrEmpty(txtBirthDate.Text))
      {
        entity.BirthDate = Convert.ToDateTime(txtBirthDate.Text);
      }
      entity.Email = txtEmail.Text;
      entity.Password = txtPassword.Text;
      entity.SecurityQuestion = ddlQuestions.SelectedValue;
      entity.SecurityAnswer = txtSecurityAnswer.Text;

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