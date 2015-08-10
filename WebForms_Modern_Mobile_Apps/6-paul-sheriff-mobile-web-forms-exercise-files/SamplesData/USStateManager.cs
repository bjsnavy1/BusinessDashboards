using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace SamplesData
{
  public class USStateManager
  {
    public List<USState> BuildCollection()
    {
      List<USState> ret = new List<USState>();
      var xelem = XElement.Load(HttpContext.Current.Server.MapPath("~/Xml/USStates.xml"));

      // Create a list of objects from XElement object
      ret =
        (from node in xelem.Elements("State")
         orderby node.Element("StateCode").Value
         select new USState
        {
          StateCodeDisplay = node.Element("StateCode").Value + "  ",
          StateCode = node.Element("StateCode").Value,
          StateName = node.Element("StateName").Value,
          Capital = node.Element("Capital").Value
        }).ToList();

      return ret;
    }
  }
}
