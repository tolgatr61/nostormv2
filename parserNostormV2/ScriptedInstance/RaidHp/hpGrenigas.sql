/* Info :
Vnum : 1058
initHp : 19425797
*/

DECLARE @HpBoss INT = 3000000
DECLARE @idBoss INT = 1058

UPDATE [cmnos].[dbo].[NpcMonster]
SET MaxHP = @HpBoss
WHERE NpcMonsterVNum = @idBoss;