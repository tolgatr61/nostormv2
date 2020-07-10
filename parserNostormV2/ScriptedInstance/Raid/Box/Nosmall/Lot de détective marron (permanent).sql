/* Info :
Rewards Vnum : 5417  Name : Lot de détective marron (permanent)
*/
DECLARE @BoxId SMALLINT = 5417 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4233', '0','1', '0', '2'),/* Casquette marron à visière (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4239', '0','1', '0', '2')/* Costume de détective marron (permanent) */
