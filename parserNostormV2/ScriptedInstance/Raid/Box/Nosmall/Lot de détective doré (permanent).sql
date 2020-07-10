/* Info :
Rewards Vnum : 5416  Name : Lot de détective doré (permanent)
*/
DECLARE @BoxId SMALLINT = 5416 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4232', '0','1', '0', '2'),/* Casquette dorée à visière (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4238', '0','1', '0', '2')/* Costume de détective doré (permanent) */
