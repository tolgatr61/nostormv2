namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Zeus_0 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CharacterTitle",
                c => new
                    {
                        CharacterTitleId = c.Int(nullable: false, identity: true),
                        CharacterId = c.Long(nullable: false),
                        TitleId = c.Int(nullable: false),
                        TitleStat = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CharacterTitleId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.CharacterTitle");
        }
    }
}
