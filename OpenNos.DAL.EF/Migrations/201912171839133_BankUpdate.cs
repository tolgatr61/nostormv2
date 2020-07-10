namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class BankUpdate : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Account", "BankMoney", c => c.Long(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Account", "BankMoney");
        }
    }
}
