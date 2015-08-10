using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace SamplesData
{
  public class SecurityQuestionManager
  {
    public List<SecurityQuestion> BuildCollection()
    {
      List<SecurityQuestion> ret = new List<SecurityQuestion>();
      var xelem = XElement.Load(HttpContext.Current.Server.MapPath("~/Xml/SecurityQuestions.xml"));

      // Create a list of objects from XElement object
      ret =
        (from node in xelem.Elements("Question")
         select new SecurityQuestion
        {
          Description = node.Element("Description").Value
        }).ToList();

      return ret;
    }
  }
}
