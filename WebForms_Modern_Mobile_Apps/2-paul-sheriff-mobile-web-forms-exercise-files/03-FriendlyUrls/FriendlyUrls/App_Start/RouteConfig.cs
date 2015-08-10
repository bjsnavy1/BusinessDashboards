using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace FriendlyUrls
{
  public static class RouteConfig
  {
    public static void RegisterRoutes(RouteCollection routes)
    {
      routes.EnableFriendlyUrls();
      // The route name (the 1st parameter) must be unique
      routes.MapPageRoute("", "Default", "~/Default.aspx");

      routes.MapPageRoute("", "Customers", "~/Customers.aspx");
      routes.MapPageRoute("", "DeletedCustomers", "~/Customers.aspx");
      // The route URL (the 2nd parameter) must be unique
      routes.MapPageRoute("", "GetCustomer/{CustomerId}", "~/Customers.aspx");

      routes.MapPageRoute("", "Products", "~/Products.aspx");
      routes.MapPageRoute("", "GetProduct/{ProductId}", "~/Products.aspx");
    }
  }
}
