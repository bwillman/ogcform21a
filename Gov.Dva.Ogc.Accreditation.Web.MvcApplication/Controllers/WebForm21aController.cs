using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gov.Dva.Ogc.Data.Accreditation.Web;
using Gov.Dva.Ogc.Accreditation.Web.MvcApplication.Models;

namespace Gov.Dva.Ogc.Accreditation.Web.MvcApplication.Controllers
{
    public class WebForm21aController : Controller
    {
        private DBSchemaEntities db = new DBSchemaEntities();

        //
        // GET: /WebForm21a/

        public ActionResult Index()
        {
            var webform21a = db.WebForm21a.Include(w => w.WebForm21aServiceBranch);
            return View(webform21a.ToList());
        }

        //
        // GET: /WebForm21a/Details/5

        public ActionResult Details(Guid id)
        {
            WebForm21a webform21a = db.WebForm21a.Find(id);
            if (webform21a == null)
            {
                return HttpNotFound();
            }
            return View(webform21a);
        }

        //
        // GET: /WebForm21a/Create

        public ActionResult Create()
        {
            ViewBag.Form21aID = new SelectList(db.WebForm21aServiceBranch, "Form21aID", "OtherService");
            return View();
        }

        //
        // POST: /WebForm21a/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(WebForm21a webform21a)
        {
            if (ModelState.IsValid)
            {
                webform21a.Form21aID = Guid.NewGuid();
                db.WebForm21a.Add(webform21a);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Form21aID = new SelectList(db.WebForm21aServiceBranch, "Form21aID", "OtherService", webform21a.Form21aID);
            return View(webform21a);
        }

        //
        // GET: /WebForm21a/Edit/5

        public ActionResult Edit(Guid id)
        {
            WebForm21a webform21a = db.WebForm21a.Find(id);
            if (webform21a == null)
            {
                return HttpNotFound();
            }
            ViewBag.Form21aID = new SelectList(db.WebForm21aServiceBranch, "Form21aID", "OtherService", webform21a.Form21aID);
            return View(webform21a);
        }

        //
        // POST: /WebForm21a/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(WebForm21a webform21a)
        {
            if (ModelState.IsValid)
            {
                db.Entry(webform21a).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Form21aID = new SelectList(db.WebForm21aServiceBranch, "Form21aID", "OtherService", webform21a.Form21aID);
            return View(webform21a);
        }

        //
        // GET: /WebForm21a/Delete/5

        public ActionResult Delete(Guid id)
        {
            WebForm21a webform21a = db.WebForm21a.Find(id);
            if (webform21a == null)
            {
                return HttpNotFound();
            }
            return View(webform21a);
        }

        //
        // POST: /WebForm21a/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            WebForm21a webform21a = db.WebForm21a.Find(id);
            db.WebForm21a.Remove(webform21a);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}