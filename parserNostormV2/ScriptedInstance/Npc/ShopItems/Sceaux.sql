DECLARE @ShopId INT = 120
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
('0', '1195', '0', @ShopId, @Slot + 0, @ShopType, '0'),
('0', '1127', '0', @ShopId, @Slot + 1, @ShopType, '0'),
('0', '1128', '0', @ShopId, @Slot + 2, @ShopType, '0'),
('0', '1129', '0', @ShopId, @Slot + 3, @ShopType, '0'),
('0', '1130', '0', @ShopId, @Slot + 4, @ShopType, '0'),
('0', '1131', '0', @ShopId, @Slot + 5, @ShopType, '0'),
('0', '1226', '0', @ShopId, @Slot + 6, @ShopType, '0'),
('0', '5500', '0', @ShopId, @Slot + 7, @ShopType, '0'),
('0', '5512', '0', @ShopId, @Slot + 8, @ShopType, '0'),
('0', '5920', '0', @ShopId, @Slot + 9, @ShopType, '0'),
('0', '5921', '0', @ShopId, @Slot + 10, @ShopType, '0'),
('0', '5922', '0', @ShopId, @Slot + 11, @ShopType, '0'),
('0', '1892', '0', @ShopId, @Slot + 12, @ShopType, '0'),
('0', '5882', '0', @ShopId, @Slot + 13, @ShopType, '0'),
('0', '5857', '0', @ShopId, @Slot + 14, @ShopType, '0'),
('0', '5883', '0', @ShopId, @Slot + 15, @ShopType, '0'),
('0', '5977', '0', @ShopId, @Slot + 16, @ShopType, '0'),
('0', '5999', '0', @ShopId, @Slot + 17, @ShopType, '0'),
('0', '5786', '0', @ShopId, @Slot + 18, @ShopType, '0'),
('0', '5785', '0', @ShopId, @Slot + 19, @ShopType, '0'),
('0', '5784', '0', @ShopId, @Slot + 20, @ShopType, '0');