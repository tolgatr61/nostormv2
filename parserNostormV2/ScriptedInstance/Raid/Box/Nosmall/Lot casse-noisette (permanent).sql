/* Info :
Rewards Vnum : 5878  Name : Lot casse-noisette (permanent)
*/
DECLARE @BoxId SMALLINT = 5878 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4827', '0','1', '0', '2'),/* Shako casse-noisette (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4829', '0','1', '0', '2')/* Uniforme casse-noisette (permanent) */
