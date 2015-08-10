using System.Collections.Generic;

namespace SamplesData
{
  public class CanadianProvinces : List<CanadianProvince>
  {
  }

  public class CanadianProvince
  {
    #region Public Properties
    public string Name { get; set; }
    public string Capital { get; set; }
    public string PostalAbbr { get; set; }
    #endregion
  }
}
