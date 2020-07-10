/* Info :
Rewards Vnum : 5414  Name : Lot festif bleu (permanent)
*/
DECLARE @BoxId SMALLINT = 5414 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4221', '0','1', '0', '2'),/* Diadème festif bleu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4227', '0','1', '0', '2')/* Robe festive bleue (permanent) */
