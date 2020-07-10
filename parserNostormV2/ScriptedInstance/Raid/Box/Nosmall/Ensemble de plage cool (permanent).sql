/* Info :
Rewards Vnum : 5592  Name : Ensemble de plage cool (permanent)
*/
DECLARE @BoxId SMALLINT = 5592 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4266', '0','1', '0', '2'),/* Chapeau de plage cool (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4268', '0','1', '0', '2')/* Costume de plage cool (permanent) */
