using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Gov.Dva.Ogc.Data.Accreditation.Web.Model
{

   
    public class WebForm21aAnnotations
    {
        [Required(ErrorMessage="First Name is required")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Last Name is required")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Street Address is required")]
        public string HomeAddress1 { get; set; }

        //Not required
        public string HomeAddress2 { get; set; }

        [Required(ErrorMessage = "State is required")]
        [RegularExpression("AL|MD", ErrorMessage="Must be a valid state")]
        public string HomeState { get; set; }

        [Required(ErrorMessage = "Zip is required")]
        [RegularExpression(@"(^\d{5}$)|(^\d{5}-\d{4}$)", ErrorMessage = "Must be a valid postal code")]
        public string HomeZip { get; set; }

        [Required(ErrorMessage = "City is required")]
        public string HomeCity { get; set; }

        [Required(ErrorMessage = "Phone Number is required")]
        public string HomePhoneNo { get; set; }

        [Required(ErrorMessage = "Email Address is required")]
        public string HomeEmailAddr { get; set; }
        
        
        /*
        public Nullable<int> EmploymentStatus { get; set; }
        public string WorkAddress1 { get; set; }
        public string WorkAddress2 { get; set; }
        public string WorkCity { get; set; }
        public string WorkState { get; set; }
        public string WorkZip { get; set; }
         */
        [Required(ErrorMessage = "Birth Date required")]  
        [DataType(DataType.Date, ErrorMessage="Must be a valid Date value")]
        public Nullable<System.DateTime> BirthDate { get; set; }
        
        [Required(ErrorMessage = "Birth Place required")]         
        public string BirthLocation { get; set; }
        
        /*
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
        */

    }
}