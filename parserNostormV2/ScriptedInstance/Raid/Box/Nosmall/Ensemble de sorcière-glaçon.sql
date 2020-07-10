/* Info :
Rewards Vnum : 5816  Name : Ensemble de sorcière-glaçon
*/
DECLARE @BoxId SMALLINT = 5816 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4534', '0','1', '0', '2'),/* Chapeau de sorcière-glaçon (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4536', '0','1', '0', '2')/* Costume de sorcière-glaçon (permanent) */
