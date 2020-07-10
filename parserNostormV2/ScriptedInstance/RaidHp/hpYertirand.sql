/* Info :
Vnum : 2639
initHp : 1494955
*/

DECLARE @HpBoss INT = 30000
DECLARE @idBoss INT = 2639

UPDATE [cmnos].[dbo].[NpcMonster]
SET MaxHP = @HpBoss
WHERE NpcMonsterVNum = @idBoss;