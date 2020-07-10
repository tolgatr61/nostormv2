/* Info :
Rewards Vnum : 5415  Name : Lot de détective rouge (permanent)
*/
DECLARE @BoxId SMALLINT = 5415 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4231', '0','1', '0', '2'),/* Casquette rouge à visière (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4237', '0','1', '0', '2')/* Costume de détective rouge (permanent) */
