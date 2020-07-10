/* Info :
Rewards Vnum : 5413  Name : Lot festif jaune (permanent)
*/
DECLARE @BoxId SMALLINT = 5413 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4220', '0','1', '0', '2'),/* Diadème festif jaune (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4226', '0','1', '0', '2')/* Robe festive jaune (permanent) */
