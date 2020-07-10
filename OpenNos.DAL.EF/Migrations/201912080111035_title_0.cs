namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class title_0 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Title",
                c => new
                    {
                        Id = c.Guid(nullable: false),
                        CharacterId = c.Long(nullable: false),
                        Active = c.Boolean(nullable: false),
                        Visible = c.Boolean(nullable: false),
                        TitleType = c.Short(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Character", t => t.CharacterId)
                .Index(t => t.CharacterId);
            
            AddColumn("dbo.Family", "Badge1", c => c.Int(nullable: false));
            AddColumn("dbo.Family", "Badge2", c => c.Int(nullable: false));
            AddColumn("dbo.Family", "Badge3", c => c.Int(nullable: false));
            AddColumn("dbo.CharacterTitle", "Active", c => c.Boolean(nullable: false));
            AddColumn("dbo.CharacterTitle", "Visible", c => c.Boolean(nullable: false));
            AddColumn("dbo.CharacterTitle", "Type", c => c.Short(nullable: false));
            DropColumn("dbo.CharacterTitle", "TitleStat");
        }
        
        public override void Down()
        {
            AddColumn("dbo.CharacterTitle", "TitleStat", c => c.Int(nullable: false));
            DropForeignKey("dbo.Title", "CharacterId", "dbo.Character");
            DropIndex("dbo.Title", new[] { "CharacterId" });
            DropColumn("dbo.CharacterTitle", "Type");
            DropColumn("dbo.CharacterTitle", "Visible");
            DropColumn("dbo.CharacterTitle", "Active");
            DropColumn("dbo.Family", "Badge3");
            DropColumn("dbo.Family", "Badge2");
            DropColumn("dbo.Family", "Badge1");
            DropTable("dbo.Title");
        }
    }
}
