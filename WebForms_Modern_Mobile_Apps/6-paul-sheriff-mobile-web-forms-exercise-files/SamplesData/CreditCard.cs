using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace SamplesData
{
	public class CreditCard
  {
    #region Constructor
    public CreditCard()
    {
      BillingPostalCode = string.Empty;
      CreditCardType = string.Empty;
      NameOnCard = string.Empty;
      _CreditCardNumber = string.Empty;
      ExpMonth = 1;
      ExpYear = DateTime.Now.Year;
      SecurityCode = string.Empty;
    }
    #endregion

    #region Public Properties
    public string BillingPostalCode { get; set; }
    public string CreditCardType { get; set; }
    public string NameOnCard { get; set; }
    public int ExpMonth { get; set; }
    public int ExpYear { get; set; }
    public string SecurityCode { get; set; }
    public List<string> Messages { get; set; }

    private string _CreditCardNumber = string.Empty;
    public string CreditCardNumber
    {
      get { return _CreditCardNumber; }
      set { _CreditCardNumber = CleanCreditCard(value); }
    }
    #endregion

    #region Validate Method
    public virtual bool Validate()
    {
      bool isValid = true;

      // Require Name on Card
      if (string.IsNullOrEmpty(NameOnCard))
      {
        Messages.Add("Name on Card must be filled in.");
        isValid = false;
      }
      // Require Credit Card Type
      if (string.IsNullOrEmpty(CreditCardType))
      {
        Messages.Add("Credit Card Type must be filled in.");
        isValid = false;
      }
      // Require Credit Card Number
      if (string.IsNullOrEmpty(CreditCardNumber))
      {
        Messages.Add("Credit Card Number must be filled in.");
        isValid = false;
      }
      // Require Billing Postal Code
      if (string.IsNullOrEmpty(BillingPostalCode))
      {
        Messages.Add("Billing Postal Code must be filled in.");
        isValid = false;
      }
      // Require Security Code
      if (string.IsNullOrEmpty(SecurityCode))
      {
        Messages.Add("Security Code must be filled in.");
        isValid = false;
      }

      return isValid;
    }
    #endregion

    #region CleanCreditCard Method
    /// <summary>
    /// Remove all formatting characters from a credit card number.
    /// </summary>
    /// <param name="phone">The credit card to clean</param>
    /// <returns>Only numeric digits from a credit card</returns>
    public string CleanCreditCard(string ccNumber)
    {
      if (!string.IsNullOrEmpty(ccNumber))
        return new Regex(@"[^\d]").Replace(ccNumber, "");
      else
        return string.Empty;
    }
    #endregion

    #region ToString Override
    public override string ToString()
    {
      return CreditCardType + " - " + NameOnCard;
    }
    #endregion
  }
}