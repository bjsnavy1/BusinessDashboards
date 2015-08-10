using System.Collections.Generic;

namespace SamplesData
{
  public class Countries : List<Country>
  {
  }

  public class Country
  {
    #region Public Properties
    public string CountryCode { get; set; }
    public string CountryName { get; set; }
    #endregion

    #region ToString Override
    public override string ToString()
    {
      return CountryCode;
    }
    #endregion
  }
}
