/* Info :
Rewards Vnum : 5789  Name : Ensemble tropical
*/
DECLARE @BoxId SMALLINT = 5789 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4527', '0','1', '0', '2'),/* Chapeau tropical (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4529', '0','1', '0', '2')/* Costume tropical (permanent) */
