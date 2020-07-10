/* Info :
Rewards Vnum : 5441  Name : Panoplie du supporteur
*/
DECLARE @BoxId SMALLINT = 5441 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4195', '0','1', '0', '2'),/* Casquette de football (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4196', '0','1', '0', '2')/* Maillot de football (permanent) */
