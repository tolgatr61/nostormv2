/* Info :
Rewards Vnum : 5638  Name : Lot du désert (permanent)
*/
DECLARE @BoxId SMALLINT = 5638 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4317', '0','1', '0', '2'),/* Turban du désert (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4321', '0','1', '0', '2')/* Robe du désert (permanent) */
