/* Info :
Vnum : 1028
initHp : 8506679
*/

DECLARE @HpBoss INT = 2300000
DECLARE @idBoss INT = 1028

UPDATE [cmnos].[dbo].[NpcMonster]
SET MaxHP = @HpBoss
WHERE NpcMonsterVNum = @idBoss;