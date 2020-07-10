/* Info :
Vnum : 637
initHp : 1125797
*/

DECLARE @HpBoss INT = 3000000
DECLARE @idBoss INT = 637

UPDATE [cmnos].[dbo].[NpcMonster]
SET MaxHP = @HpBoss
WHERE NpcMonsterVNum = @idBoss;