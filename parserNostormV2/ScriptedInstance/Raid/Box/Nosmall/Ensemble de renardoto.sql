/* Info :
Rewards Vnum : 5302  Name : Ensemble de renardoto
*/
DECLARE @BoxId SMALLINT = 5302 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4179', '0','1', '0', '2'),/* Chapeau de renardoto (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4177', '0','1', '0', '2')/* Costume de renardoto (permanent) */
