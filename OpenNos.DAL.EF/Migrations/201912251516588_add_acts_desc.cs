namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class add_acts_desc : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CharacterActPart",
                c => new
                    {
                        Id = c.Guid(nullable: false),
                        CharacterId = c.Long(nullable: false),
                        ActPartId = c.Byte(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.ActPart", t => t.ActPartId)
                .ForeignKey("dbo.Character", t => t.CharacterId)
                .Index(t => t.CharacterId)
                .Index(t => t.ActPartId);
            
            CreateTable(
                "dbo.ActPart",
                c => new
                    {
                        ActPartId = c.Byte(nullable: false),
                        ActPartNumber = c.Byte(nullable: false),
                        ActId = c.Byte(nullable: false),
                        MaxTs = c.Byte(nullable: false),
                    })
                .PrimaryKey(t => t.ActPartId)
                .ForeignKey("dbo.Act", t => t.ActId)
                .Index(t => t.ActId);
            
            CreateTable(
                "dbo.Act",
                c => new
                    {
                        ActId = c.Byte(nullable: false),
                        Title = c.String(),
                        Scene = c.Byte(nullable: false),
                    })
                .PrimaryKey(t => t.ActId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CharacterActPart", "CharacterId", "dbo.Character");
            DropForeignKey("dbo.CharacterActPart", "ActPartId", "dbo.ActPart");
            DropForeignKey("dbo.ActPart", "ActId", "dbo.Act");
            DropIndex("dbo.ActPart", new[] { "ActId" });
            DropIndex("dbo.CharacterActPart", new[] { "ActPartId" });
            DropIndex("dbo.CharacterActPart", new[] { "CharacterId" });
            DropTable("dbo.Act");
            DropTable("dbo.ActPart");
            DropTable("dbo.CharacterActPart");
        }
    }
}
