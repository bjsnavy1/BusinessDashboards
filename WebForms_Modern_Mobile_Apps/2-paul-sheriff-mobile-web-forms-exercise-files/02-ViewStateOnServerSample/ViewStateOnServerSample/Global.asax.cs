using System;

namespace ViewStateOnServerSample
{
  public class Global : System.Web.HttpApplication
  {
    protected void Application_Start(object sender, EventArgs e)
    {
    }

    protected void Session_Start(object sender, EventArgs e)
    {
      // NOTE: Since there is only 1 page, you need to 'start' a session here
      // in order to get the SessionID property to be set. Since we use it for 
      // the key of the ViewState.
      Session["Init"] = 1;
    }
  }
}