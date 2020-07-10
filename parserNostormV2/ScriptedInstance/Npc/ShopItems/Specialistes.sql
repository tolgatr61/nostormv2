DECLARE @ShopId INT = 123
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
('0', '901', '0', @ShopId, @Slot + 0, @ShopType, '0'),
('0', '902', '0', @ShopId, @Slot + 1, @ShopType, '0'),
('0', '903', '0', @ShopId, @Slot + 2, @ShopType, '0'),
('0', '904', '0', @ShopId, @Slot + 3, @ShopType, '0'),
('0', '905', '0', @ShopId, @Slot + 4, @ShopType, '0'),
('0', '906', '0', @ShopId, @Slot + 5, @ShopType, '0'),
('0', '909', '0', @ShopId, @Slot + 6, @ShopType, '0'),
('0', '910', '0', @ShopId, @Slot + 7, @ShopType, '0'),
('0', '911', '0', @ShopId, @Slot + 8, @ShopType, '0'),
('0', '912', '0', @ShopId, @Slot + 9, @ShopType, '0'),
('0', '913', '0', @ShopId, @Slot + 10, @ShopType, '0'),
('0', '914', '0', @ShopId, @Slot + 11, @ShopType, '0');