/* Info :
Rewards Vnum : 5737  Name : Ensemble de fée
*/
DECLARE @BoxId SMALLINT = 5737 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4439', '0','1', '0', '2'),/* Coiffe de costume de fée (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4441', '0','1', '0', '2')/* Tenue de costume de fée (permanent) */
