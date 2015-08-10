using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace SamplesData
{
	public class CanadianProvinceManager
	{
    public List<CanadianProvince> BuildCollection()
    {
      List<CanadianProvince> ret = new List<CanadianProvince>();
      var xelem = XElement.Load(HttpContext.Current.Server.MapPath("~/Xml/CanadianProvinces.xml"));

      // Create a list of objects from XElement object
      ret =
        (from node in xelem.Elements("Province")
         select new CanadianProvince
         {
           Name = node.Element("Name").Value,
           Capital = node.Element("Capital").Value,
           PostalAbbr = node.Element("PostalAbbr").Value
         }).ToList();

      return ret;
    }
	}
}
