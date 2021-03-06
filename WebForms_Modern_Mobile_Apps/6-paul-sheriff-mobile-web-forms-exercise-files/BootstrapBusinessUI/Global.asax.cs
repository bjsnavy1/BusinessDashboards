﻿using System;
using System.Web.UI;

namespace BootstrapBusinessUI
{
  public class Global : System.Web.HttpApplication
  {
    protected void Application_Start(object sender, EventArgs e)
    {
      // This is added for working with ASP.NET Validation controls
      string jQueryVer = "1.11.0";
      ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
      {
        Path = "~/Scripts/jquery-" + jQueryVer + ".min.js",
        DebugPath = "~/Scripts/jquery-" + jQueryVer + ".js",
        CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + jQueryVer + ".min.js",
        CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + jQueryVer + ".js",
        CdnSupportsSecureConnection = true,
        LoadSuccessExpression = "window.jQuery"
      });
    }
  }
}