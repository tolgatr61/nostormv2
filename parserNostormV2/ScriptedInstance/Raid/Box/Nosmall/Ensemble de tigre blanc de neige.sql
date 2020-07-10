/* Info :
Rewards Vnum : 5487  Name : Ensemble de tigre blanc de neige
*/
DECLARE @BoxId SMALLINT = 5487 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4256', '0','1', '0', '2'),/* Chapeau de tigre blanc de neige (1 permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4248', '0','1', '0', '2')/* Costume de tigre blanc de neige (permanent) */
