/* Info :
Rewards Vnum : 5412  Name : Lot festif rose (permanent)
*/
DECLARE @BoxId SMALLINT = 5412 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4219', '0','1', '0', '2'),/* Diadème de fête rose (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4225', '0','1', '0', '2')/* Robe festive rose (permanent) */
