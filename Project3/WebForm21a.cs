//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gov.Dva.Ogc.Data.Accreditation.Web
{
    using System;
    using System.Collections.Generic;
    
    public partial class WebForm21a
    {
        public WebForm21a()
        {
            this.WebForm21aDischargeType = new HashSet<WebForm21aDischargeType>();
            this.WebForm21aServiceDate = new HashSet<WebForm21aServiceDate>();
            this.WebForm21aBarMembership = new HashSet<WebForm21aBarMembership>();
            this.WebForm21aEducation = new HashSet<WebForm21aEducation>();
            this.WebForm21aEmployer = new HashSet<WebForm21aEmployer>();
            this.WebForm21aPracticeMembership = new HashSet<WebForm21aPracticeMembership>();
            this.WebForm21aReference = new HashSet<WebForm21aReference>();
        }
    
        public System.Guid Form21aID { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string HomeAddress1 { get; set; }
        public string HomeAddress2 { get; set; }
        public string HomeState { get; set; }
        public string HomeZip { get; set; }
        public string HomePhoneNo { get; set; }
        public string HomeEmailAddr { get; set; }
        public Nullable<int> EmploymentStatus { get; set; }
        public string WorkAddress1 { get; set; }
        public string WorkAddress2 { get; set; }
        public string WorkCity { get; set; }
        public string WorkState { get; set; }
        public string WorkZip { get; set; }
        public Nullable<System.DateTime> BirthDate { get; set; }
        public string BirthLocation { get; set; }
        public string BranchOfService { get; set; }
        public Nullable<bool> IsBarMember { get; set; }
        public Nullable<bool> IsPracticing { get; set; }
        public Nullable<bool> WasConvicted { get; set; }
        public string ExplainConviction { get; set; }
        public Nullable<bool> WasConvictedMilitary { get; set; }
        public string ExplainMilitaryConviction { get; set; }
        public Nullable<bool> IsCharged { get; set; }
        public string ExplainCharges { get; set; }
        public Nullable<bool> WasExpelled { get; set; }
        public Nullable<bool> WasDisciplined { get; set; }
        public Nullable<bool> WasTerminated { get; set; }
        public Nullable<bool> HasRepresentedGovt { get; set; }
        public Nullable<bool> WasBarred { get; set; }
        public Nullable<bool> HaveAppliedForAccred { get; set; }
        public Nullable<bool> WasAccredTerminated { get; set; }
        public Nullable<bool> IsImpaired { get; set; }
        public string ExplainImpairment { get; set; }
        public Nullable<bool> IsPhysicallyLimited { get; set; }
        public string ExplainLimitation { get; set; }
        public Nullable<System.DateTime> DateEntered { get; set; }
        public Nullable<bool> IsProcessed { get; set; }
    
        public virtual WebForm21aServiceBranch WebForm21aServiceBranch { get; set; }
        public virtual ICollection<WebForm21aDischargeType> WebForm21aDischargeType { get; set; }
        public virtual ICollection<WebForm21aServiceDate> WebForm21aServiceDate { get; set; }
        public virtual ICollection<WebForm21aBarMembership> WebForm21aBarMembership { get; set; }
        public virtual ICollection<WebForm21aEducation> WebForm21aEducation { get; set; }
        public virtual ICollection<WebForm21aEmployer> WebForm21aEmployer { get; set; }
        public virtual ICollection<WebForm21aPracticeMembership> WebForm21aPracticeMembership { get; set; }
        public virtual ICollection<WebForm21aReference> WebForm21aReference { get; set; }
    }
}
