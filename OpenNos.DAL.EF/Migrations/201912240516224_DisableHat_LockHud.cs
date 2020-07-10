namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DisableHat_LockHud : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Character", "DisableHat", c => c.Boolean(nullable: false));
            AddColumn("dbo.Character", "LockHud", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Character", "LockHud");
            DropColumn("dbo.Character", "DisableHat");
        }
    }
}
