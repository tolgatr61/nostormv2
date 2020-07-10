namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class update_title : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Title", "CharacterId", "dbo.Character");
            DropIndex("dbo.Title", new[] { "CharacterId", "TitleType" });
            DropTable("dbo.Title");
        }
        
        public override void Down()
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
                .PrimaryKey(t => t.Id);
            
            CreateIndex("dbo.Title", new[] { "CharacterId", "TitleType" }, unique: true);
            AddForeignKey("dbo.Title", "CharacterId", "dbo.Character", "CharacterId");
        }
    }
}
