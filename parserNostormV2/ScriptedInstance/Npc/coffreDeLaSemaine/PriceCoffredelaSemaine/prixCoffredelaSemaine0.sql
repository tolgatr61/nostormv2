DECLARE @NpcPrice INT = 5000000
DECLARE @ReSellPrice INT = 10000
DECLARE @idItem INT = 5279

UPDATE [cmnos].[dbo].[Item]
SET Price = @NpcPrice, SellToNpcPrice = @ReSellPrice
WHERE VNum = @idItem;