using System.Web;
using System.Web.Mvc;

namespace Gov.Dva.Ogc.Accreditation.Web.MvcApplication
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}