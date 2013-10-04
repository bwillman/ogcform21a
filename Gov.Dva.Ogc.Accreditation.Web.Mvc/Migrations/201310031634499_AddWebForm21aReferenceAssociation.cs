namespace Gov.Dva.Ogc.Accreditation.Web.Mvc.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddWebForm21aReferenceAssociation : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.UserProfile",
                c => new
                    {
                        UserId = c.Int(nullable: false, identity: true),
                        UserName = c.String(),
                    })
                .PrimaryKey(t => t.UserId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.UserProfile");
        }
    }
}
