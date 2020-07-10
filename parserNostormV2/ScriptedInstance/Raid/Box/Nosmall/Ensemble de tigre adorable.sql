/* Info :
Rewards Vnum : 5486  Name : Ensemble de tigre adorable
*/
DECLARE @BoxId SMALLINT = 5486 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4252', '0','1', '0', '2'),/* Adorable chapeau de tigre (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4244', '0','1', '0', '2')/* Adorable costume de tigre (permanent) */
