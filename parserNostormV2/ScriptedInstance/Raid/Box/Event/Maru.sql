/* Info :
 Maru Level: 20 - 99
 Player :  5 - 15 :
 Delay : 60 min. 
 Reputation : +100 
 Gold : 39000 - 40000
 Data : 
 Damage% : yes
 TeleportAll : yes
 OneSeal : yes
 */
DECLARE @BoxId SMALLINT = 302
DECLARE @BoxDesign SMALLINT = 19


INSERT INTO [dbo].[RollGeneratedItem] 
(
	[OriginalItemDesign], [OriginalItemVNum],
	[MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
	[ItemGeneratedDesign],	[ItemGeneratedAmount], [IsRareRandom],
	[Probability]
)
VALUES
	(@BoxDesign, @BoxId, '0', '7', '4808', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4809', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4819', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '1218', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '1219', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '2520', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '2159', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '450', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '451', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '452', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '453', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '454', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '455', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '456', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4250', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4254', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4256', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '4242', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '2158', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '2325', '0', '1', '0', '2'),
	(@BoxDesign, @BoxId, '0', '7', '9374', '0', '1', '0', '1')
