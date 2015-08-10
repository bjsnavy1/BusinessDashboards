Add Microsoft.AspNet.FriendlyUrls.dll
  Go to Nuget Package Manager
    Search online and install the Friendly Urls.Core

Add a class called RouteConfig and add the following using statements:
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

Add the following method:
public static void RegisterRoutes(RouteCollection routes)
{
    var settings = new FriendlyUrlSettings();
    settings.AutoRedirectMode = RedirectMode.Permanent;
    routes.EnableFriendlyUrls(settings);
    routes.MapPageRoute("", "Default", "~/Default.aspx");
}

Add as many MapPageRoutes as you want.

In your Global.asax add:
  using System.Web.Routing;

In the Application_Start() event add the following:
  RouteConfig.RegisterRoutes(RouteTable.Routes);
