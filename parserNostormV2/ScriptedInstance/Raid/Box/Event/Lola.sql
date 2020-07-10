/* Info :
 Foxy Level: 20 - 99
 Player :  5 - 15 :
 Delay : 60 min. 
 Reputation : +100 
 Gold : 4000 - 6000
 Data : 
 Damage% : yes
 TeleportAll : yes
 OneSeal : yes
 */
DECLARE @BoxId SMALLINT = 302
DECLARE @BoxDesign SMALLINT = 18


INSERT INTO [dbo].[RollGeneratedItem] 
(
	[OriginalItemDesign], [OriginalItemVNum],
	[MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
	[ItemGeneratedDesign],	[ItemGeneratedAmount], [IsRareRandom],
	[Probability]
)
VALUES
	(@BoxDesign, @BoxId, '0', '7', '4818', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '2520', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '950', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4173', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4174', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4175', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4169', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4170', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4171', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4172', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '1918', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '1004', '0', '20', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '1007', '0', '20', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '1010', '0', '20', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '9349', '0', '1', '0', '1')
