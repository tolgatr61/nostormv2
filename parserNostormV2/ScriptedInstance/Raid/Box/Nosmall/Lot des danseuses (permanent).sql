/* Info :
Rewards Vnum : 5639  Name : Lot des danseuses (permanent)
*/
DECLARE @BoxId SMALLINT = 5639 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4319', '0','1', '0', '2'),/* Bracelet de fleurs (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4323', '0','1', '0', '2')/* Costume de danse du ventre (permanent) */
