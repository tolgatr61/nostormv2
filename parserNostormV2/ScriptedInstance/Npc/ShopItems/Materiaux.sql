DECLARE @ShopId INT = 119
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
('0', '1014', '0', @ShopId, @Slot + 0, @ShopType, '0'),
('0', '1027', '0', @ShopId, @Slot + 1, @ShopType, '0'),
('0', '1015', '0', @ShopId, @Slot + 2, @ShopType, '0'),
('0', '1016', '0', @ShopId, @Slot + 3, @ShopType, '0'),
('0', '2282', '0', @ShopId, @Slot + 4, @ShopType, '0'),
('0', '2283', '0', @ShopId, @Slot + 5, @ShopType, '0'),
('0', '2284', '0', @ShopId, @Slot + 6, @ShopType, '0'),
('0', '2285', '0', @ShopId, @Slot + 7, @ShopType, '0'),
('0', '1030', '0', @ShopId, @Slot + 8, @ShopType, '0');