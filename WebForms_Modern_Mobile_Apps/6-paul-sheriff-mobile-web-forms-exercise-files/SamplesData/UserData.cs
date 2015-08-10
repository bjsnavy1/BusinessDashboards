using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SamplesData
{
  public class UserData
  {
    #region Constructor
    public UserData()
    {
      Init();
    }
    #endregion

    #region Init Method
    public void Init()
    {
      Email = string.Empty;
      Password = string.Empty;
      IsRememberMeChecked = false;
      IsAgreeToTermsChecked = false;
      FirstName = string.Empty;
      LastName = string.Empty;
      Street1 = string.Empty;
      Apartment = string.Empty;
      City = string.Empty;
      State = string.Empty;
      PostalCode = string.Empty;
      BirthMonth = 1;
      BirthDay = 1;
      BirthYear = DateTime.Now.Year;
      BirthDate = DateTime.Now;
      SecurityQuestion = string.Empty;
      SecurityAnswer = string.Empty;
    }
    #endregion

    #region Public Properties
    public string Email { get; set; }
    public string Password { get; set; }
    public bool IsRememberMeChecked { get; set; }
    public bool IsAgreeToTermsChecked { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Street1 { get; set; }
    public string Apartment { get; set; }
    public string City { get; set; }
    public string State { get; set; }
    public string PostalCode { get; set; }
    public int BirthMonth { get; set; }
    public int BirthDay { get; set; }
    public int BirthYear { get; set; }
    public DateTime BirthDate { get; set; }
    public string SecurityQuestion { get; set; }
    public string SecurityAnswer { get; set; }
    #endregion
  }
}
