using System;
using SamplesData;

namespace BootstrapBusinessUI.Samples
{
  public partial class CreditCardView : System.Web.UI.Page
  {
    protected void btnSave_Click(object sender, EventArgs e)
    {
      CreditCard entity = new CreditCard();

      entity.CreditCardType = ddlCardTypes.SelectedValue;
      entity.NameOnCard = txtNameOnCard.Text;
      entity.CreditCardNumber = txtCardNumber.Text;
      entity.SecurityCode = txtSecurityCode.Text;
      entity.ExpMonth = Convert.ToInt32(ddlMonths.SelectedValue);
      entity.ExpYear = Convert.ToInt32(ddlYears.SelectedValue);

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