namespace OpenNos.DAL.EF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class NpcMonsterResistanceIntToShort : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.NpcMonster", "DarkResistance", c => c.Short(nullable: false));
            AlterColumn("dbo.NpcMonster", "FireResistance", c => c.Short(nullable: false));
            AlterColumn("dbo.NpcMonster", "LightResistance", c => c.Short(nullable: false));
            AlterColumn("dbo.NpcMonster", "WaterResistance", c => c.Short(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.NpcMonster", "WaterResistance", c => c.Int(nullable: false));
            AlterColumn("dbo.NpcMonster", "LightResistance", c => c.Int(nullable: false));
            AlterColumn("dbo.NpcMonster", "FireResistance", c => c.Int(nullable: false));
            AlterColumn("dbo.NpcMonster", "DarkResistance", c => c.Int(nullable: false));
        }
    }
}
