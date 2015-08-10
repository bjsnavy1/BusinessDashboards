using System;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class MemberProfileView1 : System.Web.UI.Page
  {
    protected void btnSave_Click(object sender, EventArgs e)
    {
      UserData entity = new UserData();

      entity.FirstName = txtFirst.Text;
      entity.LastName = txtLast.Text;
      entity.Email = txtEmail.Text;
      entity.Password = txtPassword.Text;
      entity.Street1 = txtStreet1.Text;
      entity.Apartment = txtApt.Text;
      entity.City = txtCity.Text;
      entity.State = ddlState.SelectedValue;
      entity.BirthDay = Convert.ToInt32(ddlDays.SelectedValue);
      entity.BirthMonth = Convert.ToInt32(ddlMonths.SelectedValue);
      entity.BirthYear = Convert.ToInt32(ddlYears.SelectedValue);

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