using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SamplesData
{
  public class DateManager
  {
    #region Constructor
    public DateManager()
    {
      MaxYearsPast = 110;
      MaxYearsFuture = 12;
    }
    #endregion

    public int MaxYearsPast { get; set; }
    public int MaxYearsFuture { get; set; }

    #region MonthsLoad Method
    public List<DateMonthData> MonthsLoad()
    {
      List<DateMonthData> ret = new List<DateMonthData>();

      for (int i = 0; i < 12; i++)
      {
        ret.Add(new DateMonthData(CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i + 1).ToString(), (i+1)));
      }

      return ret;
    }
    #endregion

    #region AllPotentialDaysLoad Method
    public List<int> AllPotentialDaysLoad()
    {
      List<int> ret = new List<int>();

      for (int i = 1; i <= 31; i++)
      {
        ret.Add(i);
      }

      return ret;
    }
    #endregion

    #region DaysLoad Method
    public List<int> DaysLoad(int year, int month)
    {
      List<int> ret = new List<int>();

      for (int i = 1; i <= DateTime.DaysInMonth(year, month); i++)
      {
        ret.Add(i);
      }

      return ret;
    }
    #endregion

    #region YearsPastLoad Methods
    public List<int> YearsPastLoad()
    {
      List<int> ret = new List<int>();

      for (int i = DateTime.Now.Year; i >= (DateTime.Now.Year - MaxYearsPast); i--)
      {
        ret.Add(i);
      }

      return ret;
    }
    public List<int> YearsPastLoad(int maxYearsOld)
    {
      List<int> ret = new List<int>();

      for (int i = DateTime.Now.Year; i >= (DateTime.Now.Year - maxYearsOld); i--)
      {
        ret.Add(i);
      }

      return ret;
    }
    #endregion

    #region YearsFutureLoad Methods
    public List<int> YearsFutureLoad()
    {
      List<int> ret = new List<int>();

      for (int i = DateTime.Now.Year; i <= (DateTime.Now.Year + MaxYearsFuture); i++)
      {
        ret.Add(i);
      }

      return ret;
    }

    public List<int> YearsFutureLoad(int maxYearsFuture)
    {
      List<int> ret = new List<int>();

      for (int i = DateTime.Now.Year; i <= (DateTime.Now.Year + maxYearsFuture); i++)
      {
        ret.Add(i);
      }

      return ret;
    }
    #endregion
  }
}
