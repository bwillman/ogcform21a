using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using Gov.Dva.Ogc.Data.Accreditation.Web;

namespace Gov.Dva.Ogc.Accreditation.Web.MvcApplication.Controllers
{
    public class WebForm21aAPIController : ApiController
    {
        private DBSchemaEntities db = new DBSchemaEntities();

        // GET api/WebForm21aAPI
        public IEnumerable<WebForm21a> GetWebForm21a()
        {
            var webform21a = db.WebForm21a.Include(w => w.WebForm21aServiceBranch);
            return webform21a.AsEnumerable();
        }

        // GET api/WebForm21aAPI/5
        public WebForm21a GetWebForm21a(Guid id)
        {
            WebForm21a webform21a = db.WebForm21a.Find(id);
            if (webform21a == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return webform21a;
        }

        // PUT api/WebForm21aAPI/5
        public HttpResponseMessage PutWebForm21a(Guid id, WebForm21a webform21a)
        {
            if (!ModelState.IsValid)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ModelState);
            }

            if (id != webform21a.Form21aID)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest);
            }

            db.Entry(webform21a).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }

            return Request.CreateResponse(HttpStatusCode.OK);
        }

        // POST api/WebForm21aAPI
        public HttpResponseMessage PostWebForm21a(WebForm21a webform21a)
        {
            if (ModelState.IsValid)
            {
                db.WebForm21a.Add(webform21a);
                db.SaveChanges();

                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created, webform21a);
                response.Headers.Location = new Uri(Url.Link("DefaultApi", new { id = webform21a.Form21aID }));
                return response;
            }
            else
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ModelState);
            }
        }

        // DELETE api/WebForm21aAPI/5
        public HttpResponseMessage DeleteWebForm21a(Guid id)
        {
            WebForm21a webform21a = db.WebForm21a.Find(id);
            if (webform21a == null)
            {
                return Request.CreateResponse(HttpStatusCode.NotFound);
            }

            db.WebForm21a.Remove(webform21a);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }

            return Request.CreateResponse(HttpStatusCode.OK, webform21a);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}