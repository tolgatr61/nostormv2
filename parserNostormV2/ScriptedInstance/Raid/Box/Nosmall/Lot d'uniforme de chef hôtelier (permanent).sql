/* Info :
Rewards Vnum : 5604  Name : Lot d'uniforme de chef hôtelier (permanent)
*/
DECLARE @BoxId SMALLINT = 5604 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4287', '0','1', '0', '2'),/* Toque de chef hôtelier (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4289', '0','1', '0', '2')/* Uniforme de chef hôtelier (permanent) */
