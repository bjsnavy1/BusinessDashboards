using System;
using System.IO;
using System.Web;
using System.Web.UI;

namespace ViewStateOnServerSample
{
  public class AppBasePage : System.Web.UI.Page
  {
    private string _ViewStateKey = string.Empty;
    protected bool StoreViewStateOnServer { get; set; }

    protected override void OnInit(EventArgs e)
    {
      _ViewStateKey = Session.SessionID + GetPageName();

      base.OnInit(e);
    }

    #region LoadPageStateFromPersistenceMedium Override
    /// <summary>
    /// Overrides the LoadPageStateFromPersistenceMedium on the System.Web.UI.Page class 
    /// Retrieves ViewState from the Cache object
    /// </summary>
    /// <returns>An object that contains the page state</returns>
    protected override object LoadPageStateFromPersistenceMedium()
    {
      object result = null;
      
      if (StoreViewStateOnServer)
      {
        try
        {
          // Retrieve from cache
          result = Cache.Get(_ViewStateKey);         
        }
        catch (Exception ex)
        {
          throw new HttpException("Invalid view state", ex);
        }

        return result;
      }
      else
        return base.LoadPageStateFromPersistenceMedium();
    }
    #endregion

    #region SavePageStateToPersistenceMedium Override
    /// <summary>
    /// Overrides the SavePageStateToPersistenceMedium on the System.Web.UI.Page class  
    /// Stores View State into the Cache object
    /// </summary>
    /// <param name="state">An object that contains page state</param>
    protected override void SavePageStateToPersistenceMedium(object state)
    {
      string cacheKey = string.Empty;

      if (StoreViewStateOnServer)
      {
        // Store into Cache
        Cache.Add(_ViewStateKey, state, null,
          System.Web.Caching.Cache.NoAbsoluteExpiration,
          TimeSpan.FromMinutes(10),
          System.Web.Caching.CacheItemPriority.Normal, null);
      }
      else
        base.SavePageStateToPersistenceMedium(state);
    }
    #endregion

    #region GetPageName Method
    protected string GetPageName()
    {
      string page = string.Empty;
      page = HttpContext.Current.Request.Url.LocalPath;
      if (!string.IsNullOrEmpty(page))
      {
        if (page.Contains("/"))
        {
          page = page.Substring(page.LastIndexOf("/") + 1);
        }
      }

      return page;
    }
    #endregion
  }
}