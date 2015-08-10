using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace SamplesData
{
	public class CountryManager
	{
    public List<Country> BuildCollection()
    {
      List<Country> ret = new List<Country>();
      var xelem = XElement.Load(HttpContext.Current.Server.MapPath("~/Xml/Countries.xml"));

      // Create a list of objects from XElement object
      ret =
        (from node in xelem.Elements("Country")
         select new Country
         {
           CountryCode = node.Element("CountryCode").Value,
           CountryName = node.Element("CountryName").Value
         }).ToList();

      return ret;
    }
	}
}
