using System;
using System.Text;

namespace HTML5Samples
{
  public partial class ClientIdSample : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
      Product entity = new Product();

      System.Diagnostics.Debugger.Break();

      entity.ProductName = txtProductName.Text;
      if(!string.IsNullOrEmpty(txtIntroductionDate.Text))
        entity.IntroductionDate = HTMLDateToDotNet(txtIntroductionDate.Text);
      entity.Cost = Convert.ToDecimal(txtCost.Text);
      entity.Price = Convert.ToDecimal(txtPrice.Text);
      entity.IsDiscontinued = chkIsDiscontinued.Checked;
    }

    /// <summary>
    /// Returns a normal .NET DateTime object from a value retrieved from a date created in javascript using the new Date().toLocaleDateString() method.
    /// </summary>
    /// <param name="dateValue">The date value to check</param>
    /// <returns>A DateTime object</returns>
    public static DateTime HTMLDateToDotNet(string dateValue)
    {
      DateTime value = DateTime.Now;
      string temp;

      if (!DateTime.TryParse(dateValue, out value))
      {
        // Assume it is a javascript date
        temp = Encoding.Default.GetString(Encoding.ASCII.GetBytes(dateValue)).Replace("?", "");
        if (!DateTime.TryParse(temp, out value))
        {
          value = DateTime.MinValue;
        }
      }

      return value;
    }
  }
}