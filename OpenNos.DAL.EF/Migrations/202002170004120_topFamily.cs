namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class topFamily : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Family", "TopFamily", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Family", "TopFamily");
        }
    }
}
