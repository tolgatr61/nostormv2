/* Info :
Rewards Vnum : 5303  Name : Coffre du hasard avec costume de renardoto
Slot : 1
*/

DECLARE @ShopId INT = 124
DECLARE @ShopType INT = 14
DECLARE @Slot INT = 0

INSERT INTO [cmnos].[dbo].[ShopItem](
	[Color],
	[ItemVNum],
	[Rare],
	[ShopId],
	[Slot],
	[Type],
	[Upgrade]
)
VALUES
('0', '5303', '0', @ShopId, @Slot + 1, @ShopType, '0');
/* On va préferer les additions sur @Slot si jamais je regroupe
toute les lignes. */