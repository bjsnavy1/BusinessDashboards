using System.Collections.Generic;
using System.Globalization;

namespace SamplesData
{
  public class DateMonthData
  {
    #region Constructors
    public DateMonthData()
    {
    }

    public DateMonthData(string monthName, int monthNumber)
    {
      Month = monthName;
      MonthNumber = monthNumber;
    }
    #endregion

    public string Month { get; set; }
    public string MonthNameNumber
    {
      get { return MonthNumber.ToString() + "-" + Month; }
    }
    public int MonthNumber { get; set; }
  }
}
