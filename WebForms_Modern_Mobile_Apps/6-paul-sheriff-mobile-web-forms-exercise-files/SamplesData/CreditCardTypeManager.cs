using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace SamplesData
{
  public class CreditCardTypeManager
  {
    public List<CreditCardType> BuildCollection()
    {
      List<CreditCardType> ret = new List<CreditCardType>();
      var xelem = XElement.Load(HttpContext.Current.Server.MapPath("~/Xml/CreditCardTypes.xml"));

      // Create a list of objects from XElement object
      ret =
        (from node in xelem.Elements("CardType")
         select new CreditCardType
         {
           Name = node.Element("Name").Value,
           Value = node.Element("Value").Value,
           SecurityCodeLength = Convert.ToInt32(node.Element("SecurityCodeLength").Value)
         }).ToList();

      return ret;
    }
  }
}