using System;
using System.Collections.Generic;
using System.Text;

public class Address
{
  #region Enumerations
  public enum AddressTypeEnum : int
  {
    US,
    Canadian,
    UK,
    Other,
  }
  #endregion

  #region Constructor
  public Address()
  {
    Init();
  }
  #endregion

  #region Init Method
  public void Init()
  {
    ObjectId = Guid.NewGuid();
    AddressType = AddressTypeEnum.US;
    Address1 = string.Empty;
    Address2 = string.Empty;
    Address3 = string.Empty;
    City = string.Empty;
    Village = string.Empty;
    StateId = int.MinValue;
    StateCode = string.Empty;
    StateName = string.Empty;
    CountryId = int.MinValue;
    CountryCode = string.Empty;
    CountryName = string.Empty;
    PostalCode = string.Empty;
    PostalCodeExt = string.Empty;
    Messages = new List<string>();
  }
  #endregion

  #region Public Properties
  public Guid ObjectId { get; set; }
  public AddressTypeEnum AddressType { get; set; }
  public string Address1 { get; set; }
  public string Address2 { get; set; }
  public string Address3 { get; set; }
  public string City { get; set; }
  public string Village { get; set; }
  public int StateId { get; set; }
  public string StateCode { get; set; }
  public string StateName { get; set; }
  public int CountryId { get; set; }
  public string CountryCode { get; set; }
  public string CountryName { get; set; }
  public string PostalCode { get; set; }
  public string PostalCodeExt { get; set; }
  public List<string> Messages { get; set; }
  #endregion

  #region Validate Method
  public virtual bool Validate()
  {
    bool isValid = true;

    //  Require Address1
    if (string.IsNullOrEmpty(Address1))
    {
      Messages.Add("Address 1 must be filled in.");
      isValid = false;
    }

    //  Require City
    if (string.IsNullOrEmpty(City))
    {
      Messages.Add("City must be filled in.");
      isValid = false;
    }

    // Require State for Canada and US
    if (this.AddressType == AddressTypeEnum.Canadian | this.AddressType == AddressTypeEnum.US)
    {
      if (string.IsNullOrEmpty(StateName) & string.IsNullOrEmpty(StateCode) & StateId > 0)
      {
        Messages.Add("State must be filled in.");
        isValid = false;
      }
    }

    //  Require Postal Code
    if (string.IsNullOrEmpty(PostalCode))
    {
      Messages.Add("Postal Code must be filled in.");
      isValid = false;
    }

    return isValid;
  }
  #endregion

  #region GetFullAddress Method
  public string GetFullAddress()
  {
    // Returns an strAddr in the following format
    // 1234 Street
    // PO Box 1234
    // Route(4)
    // City, State 90210-1234

    StringBuilder sb = new StringBuilder(1024);

    sb.AppendLine(Address1);
    if (!string.IsNullOrEmpty(Address2))
    {
      sb.AppendLine(Address2);
    }
    if (!string.IsNullOrEmpty(Address3))
    {
      sb.AppendLine(Address3);
    }

    // Build City, State  PostalCode
    sb.Append(City);
    if (AddressType != AddressTypeEnum.Other)
    {
      if (string.IsNullOrEmpty(StateName))
      {
        sb.Append(", " + StateName);
      }
      else
      {
        sb.Append(", " + StateCode);
      }
    }
    sb.Append("  " + PostalCode);
    if (AddressType != AddressTypeEnum.Other & !string.IsNullOrEmpty(PostalCodeExt))
    {
      sb.Append("-" + PostalCodeExt);
    }
    sb.AppendLine();

    return sb.ToString();
  }
  #endregion

  #region ToString Override
  public override string ToString()
  {
    return GetFullAddress();
  }
  #endregion
}