namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class test_title : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.CharacterTitle", "CharacterId", "dbo.Character");
            DropIndex("dbo.CharacterTitle", new[] { "CharacterId" });
            CreateTable(
                "dbo.CharacterTitles",
                c => new
                    {
                        TitleKey = c.Long(nullable: false, identity: true),
                        CharacterId = c.Long(nullable: false),
                        TitleId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.TitleKey)
                .ForeignKey("dbo.Character", t => t.CharacterId, cascadeDelete: true)
                .Index(t => t.CharacterId);
            
            DropTable("dbo.CharacterTitle");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.CharacterTitle",
                c => new
                    {
                        CharacterTitleId = c.Long(nullable: false, identity: true),
                        CharacterId = c.Long(nullable: false),
                        TitleVNum = c.Short(nullable: false),
                        TitleId = c.Byte(nullable: false),
                        State = c.Byte(nullable: false),
                    })
                .PrimaryKey(t => t.CharacterTitleId);
            
            DropForeignKey("dbo.CharacterTitles", "CharacterId", "dbo.Character");
            DropIndex("dbo.CharacterTitles", new[] { "CharacterId" });
            DropTable("dbo.CharacterTitles");
            CreateIndex("dbo.CharacterTitle", "CharacterId");
            AddForeignKey("dbo.CharacterTitle", "CharacterId", "dbo.Character", "CharacterId");
        }
    }
}
