using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gov.Dva.Ogc.Data.Accreditation.Web;

namespace Gov.Dva.Ogc.Accreditation.Web.Mvc.Controllers
{
    public class WebForm21aController : Controller
    {
        private DBSchemaEntities db = new DBSchemaEntities();

        //
        // GET: /WebForm21/

        public ActionResult Index()
        {
            var webform21a = db.WebForm21a.Include(w => w.WebForm21aServiceBranch);
            return View(webform21a.ToList());
        }

        //
        // GET: /WebForm21/Details/5

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
        // GET: /WebForm21/Create

        public ActionResult Create()
        {
            WebForm21a newForm = new WebForm21a();
             /* serviceDates */
            var serviceDatesList = new List<WebForm21aServiceDate>();
            serviceDatesList.Add(new WebForm21aServiceDate() {ActiveServiceDate = new DateTime(2001,12,1)});
            serviceDatesList.Add(new WebForm21aServiceDate() { ActiveServiceDate = new DateTime(2005, 10, 1) });
            newForm.WebForm21aServiceDate = serviceDatesList;

            /* employers */
            var employerList = new List<WebForm21aEmployer>();
            employerList.Add(new WebForm21aEmployer());
            employerList.Add(new WebForm21aEmployer());
            newForm.WebForm21aEmployer = employerList;

            /* education */
            var educationList = new List<WebForm21aEducation>();
            educationList.Add(new WebForm21aEducation());
            educationList.Add(new WebForm21aEducation());
            newForm.WebForm21aEducation = educationList;

            /* barMembership */
            var barMembershipList = new List<WebForm21aBarMembership>();
            barMembershipList.Add(new WebForm21aBarMembership());
            barMembershipList.Add(new WebForm21aBarMembership());
            newForm.WebForm21aBarMembership = barMembershipList;

            /* barMembership */
            var practiceMembershipList = new List<WebForm21aPracticeMembership>();
            practiceMembershipList.Add(new WebForm21aPracticeMembership());
            practiceMembershipList.Add(new WebForm21aPracticeMembership());
            newForm.WebForm21aPracticeMembership = practiceMembershipList;


            /* set bits to false - because nulls don't get handled well by HtmlHelper.RadioButtonFor*/
            if (newForm.IsBarMember == null) { newForm.IsBarMember = false; }
            if (newForm.IsPracticing == null) { newForm.IsPracticing = false; }
            if (newForm.WasConvicted == null) { newForm.WasConvicted = false; }
            if (newForm.WasConvictedMilitary == null) { newForm.WasConvictedMilitary = false; }
            if (newForm.IsCharged == null) { newForm.IsCharged = false; }
            if (newForm.WasExpelled == null) { newForm.WasExpelled = false; }
            if (newForm.WasDisciplined == null) { newForm.WasDisciplined = false; }
            if (newForm.WasTerminated == null) { newForm.WasTerminated = false; }
            if (newForm.HasRepresentedGovt == null) { newForm.HasRepresentedGovt = false; }
            if (newForm.WasBarred == null) { newForm.WasBarred = false; }
            if (newForm.HaveAppliedForAccred == null) { newForm.HaveAppliedForAccred = false; }
            if (newForm.WasAccredTerminated == null) { newForm.WasAccredTerminated = false; }
            if (newForm.IsImpaired == null) { newForm.IsImpaired = false; }
            if (newForm.IsPhysicallyLimited == null) { newForm.IsPhysicallyLimited = false; }
            if (newForm.IsProcessed == null) { newForm.IsProcessed = false; }

            /* references */
            var referenceList = new List<WebForm21aReference>();
            referenceList.Add(new WebForm21aReference());
            referenceList.Add(new WebForm21aReference());
            newForm.WebForm = referenceList;


            //ViewBag.Form21aID = new SelectList(db.WebForm21aServiceBranch, "Form21aID", "OtherService");
            return View(newForm);
        }

        //
        // POST: /WebForm21/Create

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
        // GET: /WebForm21/Edit/5

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
        // POST: /WebForm21/Edit/5

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
        // GET: /WebForm21/Delete/5

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
        // POST: /WebForm21/Delete/5

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