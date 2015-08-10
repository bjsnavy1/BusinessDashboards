using System;
using System.Web.UI;

namespace BootstrapBusinessUI.Samples
{
  public partial class AddressView : System.Web.UI.Page
  {
    protected override void OnPreInit(EventArgs e)
    {
      // Must override EnableViewState on Master Page
      BootstrapBusinessUI.MasterPages.Site master = Page.Master as BootstrapBusinessUI.MasterPages.Site;
      master.EnableViewState = true;

      base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
      if (!Page.IsPostBack)
      {
        InitControlVisiblity();
        ShowDetails(Address.AddressTypeEnum.US);
      }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
      Address entity = null;

      entity = GetAddressData();

      // Show the message area
      divMessageArea.Visible = true;

      System.Diagnostics.Debugger.Break();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
      Response.Redirect("Home.aspx");
    }

    #region InitControlVisibility Method
    private void InitControlVisiblity()
    {
      divAddress3.Visible = false;
      divVillage.Visible = false;
      divZipExt.Visible = true;
      divUSState.Visible = true;
      divProvince.Visible = false;
      ddlUSState.Visible = true;
      ddlProvince.Visible = false;
    }
    #endregion

    #region AddressType Property
    private Address.AddressTypeEnum AddressType
    {
      get
      {
        if (ddlCountry.SelectedItem != null)
        {
          if (ddlCountry.SelectedItem.Value == "USA")
          {
            return Address.AddressTypeEnum.US;
          }
          else if (ddlCountry.SelectedItem.Value == "CAN")
          {
            return Address.AddressTypeEnum.Canadian;
          }
          else if (ddlCountry.SelectedItem.Value == "GBR")
          {
            return Address.AddressTypeEnum.UK;
          }
          else
          {
            return Address.AddressTypeEnum.Other;
          }
        }
        else
          return Address.AddressTypeEnum.US;
      }
    }
    #endregion

    #region SelectedIndexChanged Event on Country DropDown
    protected void ddlCountry_SelectedIndexChanged(object sender, System.EventArgs e)
    {
      ShowDetails(AddressType);
    }
    #endregion

    #region ShowDetails Method
    public void ShowDetails(Address.AddressTypeEnum addressType)
    {
      lblZipPostal.Text = "Postal Code";
      txtZipPostal.Attributes["placeholder"] = "Postal Code";
      txtZipPostal.Attributes["title"] = "Postal Code";
      txtZipPostal.TextMode = System.Web.UI.WebControls.TextBoxMode.SingleLine;
      if (AddressType == Address.AddressTypeEnum.Other)
      {
        divAddress3.Visible = true;
        divVillage.Visible = false;
        divUSState.Visible = false;
        ddlUSState.Visible = false;
        divProvince.Visible = false;
        ddlProvince.Visible = false;
        divZipExt.Visible = false;
      }
      else if (AddressType == Address.AddressTypeEnum.UK)
      {
        divAddress3.Visible = true;
        divVillage.Visible = true;
        divUSState.Visible = false;
        ddlUSState.Visible = false;
        divProvince.Visible = false;
        ddlProvince.Visible = false;
        divZipExt.Visible = false;
      }
      else if (AddressType == Address.AddressTypeEnum.Canadian)
      {
        divAddress3.Visible = false;
        divVillage.Visible = false;
        divUSState.Visible = false;
        ddlUSState.Visible = false;
        divProvince.Visible = true;
        ddlProvince.Visible = true;
        divZipExt.Visible = false;
      }
      else if (AddressType == Address.AddressTypeEnum.US)
      {
        lblZipPostal.Text = "Zip Code";
        txtZipPostal.Attributes["placeholder"] = "Zip Code";
        txtZipPostal.Attributes["title"] = "Zip Code";
        txtZipPostal.TextMode = System.Web.UI.WebControls.TextBoxMode.Number;
        divAddress3.Visible = false;
        divVillage.Visible = false;
        divUSState.Visible = true;
        divProvince.Visible = false;
        ddlUSState.Visible = true;
        ddlProvince.Visible = false;
        divZipExt.Visible = true;
      }
    }
    #endregion

    #region GetAddressData Method
    public Address GetAddressData()
    {
      Address entity = new Address();

      entity.AddressType = AddressType;
      entity.CountryCode = ddlCountry.SelectedItem.Value;
      entity.CountryName = ddlCountry.SelectedItem.Text;
      entity.Address1 = txtAddress1.Text;
      entity.Address2 = txtAddress2.Text;
      entity.Address3 = txtAddress3.Text;
      entity.Village = txtVillage.Text;
      entity.City = txtCity.Text;
      entity.PostalCode = txtZipPostal.Text;
      entity.PostalCodeExt = txtZipExtension.Text;

      if (ddlUSState.Visible)
      {
        entity.StateCode = ddlUSState.SelectedItem.Value;
        entity.StateName = ddlUSState.SelectedItem.Text;
      }
      else if (ddlProvince.Visible)
      {
        entity.StateCode = ddlProvince.SelectedItem.Value;
        entity.StateName = ddlProvince.SelectedItem.Text;
      }
      else
      {
        // When country is 'other'
        entity.StateCode = "";
        entity.StateName = "";
      }

      return entity;
    }
    #endregion

    #region SetUserData Method
    public void SetUserData(Address entity)
    {
      txtAddress1.Text = entity.Address1;
      txtAddress2.Text = entity.Address2;
      txtAddress3.Text = entity.Address3;
      txtCity.Text = entity.City;
      txtZipPostal.Text = entity.PostalCode;
      txtZipExtension.Text = entity.PostalCodeExt;

      // Show the correct display
      ShowDetails(entity.AddressType);

      if (entity.CountryCode == "USA")
      {
        if (!string.IsNullOrEmpty(entity.StateCode))
        {
          ddlUSState.SelectedIndex = -1;
          WebListHelper.DropDownFindByValue(ref ddlUSState, entity.StateCode);
        }
        else if (!string.IsNullOrEmpty(entity.StateName))
        {
          ddlUSState.SelectedIndex = -1;
          WebListHelper.DropDownFindByText(ref ddlUSState, entity.StateName);
        }
      }
      else if (entity.CountryCode == "CAN")
      {
        if (!string.IsNullOrEmpty(entity.StateCode))
        {
          ddlProvince.SelectedIndex = -1;
          WebListHelper.DropDownFindByValue(ref ddlProvince, entity.StateCode);
        }
        else if (!string.IsNullOrEmpty(entity.StateName))
        {
          ddlProvince.SelectedIndex = -1;
          WebListHelper.DropDownFindByText(ref ddlProvince, entity.StateName);
        }
      }

      if (!string.IsNullOrEmpty(entity.CountryCode))
      {
        ddlCountry.SelectedIndex = -1;
        WebListHelper.DropDownFindByValue(ref ddlCountry, entity.CountryCode);
      }
      else if (!string.IsNullOrEmpty(entity.CountryName))
      {
        ddlCountry.SelectedIndex = -1;
        WebListHelper.DropDownFindByValue(ref ddlCountry, entity.CountryName);
      }
    }
    #endregion
  }
}