﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBSchemaEntities : DbContext
    {
        public DBSchemaEntities()
            : base("name=DBSchemaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<WebAccount> WebAccounts { get; set; }
        public DbSet<WebForm21> WebForm21 { get; set; }
        public DbSet<WebForm21a> WebForm21a { get; set; }
        public DbSet<WebForm21aBarMembership> WebForm21aBarMembership { get; set; }
        public DbSet<WebForm21aDischargeType> WebForm21aDischargeType { get; set; }
        public DbSet<WebForm21aEducation> WebForm21aEducation { get; set; }
        public DbSet<WebForm21aEmployer> WebForm21aEmployer { get; set; }
        public DbSet<WebForm21aPracticeMembership> WebForm21aPracticeMembership { get; set; }
        public DbSet<WebForm21aReference> WebForm21aReference { get; set; }
        public DbSet<WebForm21aServiceBranch> WebForm21aServiceBranch { get; set; }
        public DbSet<WebForm21DischargeType> WebForm21DischargeType { get; set; }
        public DbSet<WebForm21OtherAccred> WebForm21OtherAccred { get; set; }
        public DbSet<WebForm21Qualification> WebForm21Qualification { get; set; }
        public DbSet<WebForm21ServiceBranch> WebForm21ServiceBranch { get; set; }
        public DbSet<WebForm21ServiceDate> WebForm21ServiceDate { get; set; }
    }
}
