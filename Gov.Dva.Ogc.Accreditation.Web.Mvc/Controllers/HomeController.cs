using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gov.Dva.Ogc.Accreditation.Web.Mvc.Filters;
using Gov.Dva.Ogc.Accreditation.Web.Mvc.Models;
using Gov.Dva.Ogc.Data.Accreditation.Web;
using Gov.Dva.Ogc.Data.Accreditation.Web.Model;

namespace Gov.Dva.Ogc.Accreditation.Web.Mvc.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            DBSchemaEntities thisDb = new DBSchemaEntities();
            WebForm21 thisForm = null;
            try
            {
                Guid g = Guid.Parse("94c4ac63-f82d-434c-8292-ee9fc5514d5a");
                thisForm = thisDb.WebForm21.Where(i => i.Form21ID == g).Single();
                System.Diagnostics.Debug.WriteLine("Guid.Parse worked");
            }
            catch (Exception e)
            {
                System.Diagnostics.Debug.WriteLine("Exception: " + e.Message);
            }

            //
            ViewData["benModel"] = thisForm;

            ViewBag.Message = "Submit new applications as well as recertification renewals.";

            return View();


        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
