/* Info :
Vnum : 1058
initHp : 18128515
*/

DECLARE @HpBoss INT = 3000000
DECLARE @idBoss INT = 1044

UPDATE [cmnos].[dbo].[NpcMonster]
SET MaxHP = @HpBoss
WHERE NpcMonsterVNum = @idBoss;