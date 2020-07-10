DECLARE @HpBoss INT = 600000
DECLARE @idBoss INT = 282

UPDATE [cmnos].[dbo].[NpcMonster]
SET MaxHP = @HpBoss
WHERE NpcMonsterVNum = @idBoss;

DECLARE @HPMob INT = 12000
DECLARE @idMob INT = 283

UPDATE [cmnos].[dbo].[NpcMonster]
SET MaxHP = @HPMob
WHERE NpcMonsterVNum = @idMob;