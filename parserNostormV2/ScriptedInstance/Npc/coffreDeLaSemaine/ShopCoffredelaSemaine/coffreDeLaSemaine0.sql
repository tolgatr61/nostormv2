/* Info :
Rewards Vnum : 5279  Name : Coffre du hasard des fées divines
Slot : 0
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
('0', '5279', '0', @ShopId, @Slot + 0, @ShopType, '0');
/* On va préferer les additions sur @Slot si jamais je regroupe
toute les lignes. */