namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Title_System : DbMigration
    {
        public override void Up()
        {
            DropIndex("dbo.Title", new[] { "CharacterId" });
            DropPrimaryKey("dbo.CharacterTitle");
            AddColumn("dbo.Character", "EffectTitle", c => c.Short(nullable: false));
            AddColumn("dbo.Character", "ViewTitle", c => c.Short(nullable: false));
            AddColumn("dbo.CharacterTitle", "TitleVNum", c => c.Short(nullable: false));
            AddColumn("dbo.CharacterTitle", "State", c => c.Byte(nullable: false));
            AlterColumn("dbo.CharacterTitle", "CharacterTitleId", c => c.Long(nullable: false, identity: true));
            AlterColumn("dbo.CharacterTitle", "TitleId", c => c.Byte(nullable: false));
            AddPrimaryKey("dbo.CharacterTitle", "CharacterTitleId");
            CreateIndex("dbo.CharacterTitle", "CharacterId");
            CreateIndex("dbo.Title", new[] { "CharacterId", "TitleType" }, unique: true);
            AddForeignKey("dbo.CharacterTitle", "CharacterId", "dbo.Character", "CharacterId");
            DropColumn("dbo.CharacterTitle", "Active");
            DropColumn("dbo.CharacterTitle", "Visible");
            DropColumn("dbo.CharacterTitle", "Type");
        }
        
        public override void Down()
        {
            AddColumn("dbo.CharacterTitle", "Type", c => c.Short(nullable: false));
            AddColumn("dbo.CharacterTitle", "Visible", c => c.Boolean(nullable: false));
            AddColumn("dbo.CharacterTitle", "Active", c => c.Boolean(nullable: false));
            DropForeignKey("dbo.CharacterTitle", "CharacterId", "dbo.Character");
            DropIndex("dbo.Title", new[] { "CharacterId", "TitleType" });
            DropIndex("dbo.CharacterTitle", new[] { "CharacterId" });
            DropPrimaryKey("dbo.CharacterTitle");
            AlterColumn("dbo.CharacterTitle", "TitleId", c => c.Int(nullable: false));
            AlterColumn("dbo.CharacterTitle", "CharacterTitleId", c => c.Int(nullable: false, identity: true));
            DropColumn("dbo.CharacterTitle", "State");
            DropColumn("dbo.CharacterTitle", "TitleVNum");
            DropColumn("dbo.Character", "ViewTitle");
            DropColumn("dbo.Character", "EffectTitle");
            AddPrimaryKey("dbo.CharacterTitle", "CharacterTitleId");
            CreateIndex("dbo.Title", "CharacterId");
        }
    }
}
