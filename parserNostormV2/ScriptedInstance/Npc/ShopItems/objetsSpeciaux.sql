DECLARE @ShopId INT = 118
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
('0', '4240', '0', @ShopId, @Slot + 0, @ShopType, '0'),
('0', '4801', '0', @ShopId, @Slot + 1, @ShopType, '0'),
('0', '4194', '0', @ShopId, @Slot + 2, @ShopType, '0'),
('0', '285', '0', @ShopId, @Slot + 3, @ShopType, '0'),
('0', '4106', '0', @ShopId, @Slot + 4, @ShopType, '0'),
('0', '1246', '0', @ShopId, @Slot + 5, @ShopType, '0'),
('0', '1247', '0', @ShopId, @Slot + 6, @ShopType, '0'),
('0', '1248', '0', @ShopId, @Slot + 7, @ShopType, '0'),
('0', '1249', '0', @ShopId, @Slot + 8, @ShopType, '0'),
('0', '1286', '0', @ShopId, @Slot + 9, @ShopType, '0'),
('0', '1366', '0', @ShopId, @Slot + 10, @ShopType, '0'),
('0', '2168', '0', @ShopId, @Slot + 11, @ShopType, '0'),
('0', '1244', '0', @ShopId, @Slot + 12, @ShopType, '0'),
('0', '1078', '0', @ShopId, @Slot + 13, @ShopType, '0');