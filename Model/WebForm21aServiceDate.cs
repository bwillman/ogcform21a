//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gov.Dva.Ogc.Data.Accreditation.Web.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class WebForm21aServiceDate
    {
        public System.Guid ID { get; set; }
        public System.Guid Form21aID { get; set; }
        public System.DateTime StartServiceDate { get; set; }
        public System.DateTime EndServiceDate { get; set; }
    
        public virtual WebForm21a WebForm21a { get; set; }
    }
}
