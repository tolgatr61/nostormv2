/* Info :
Rewards Vnum : 5212  Name : Mystérieux sac à cloches
*/
DECLARE @BoxId SMALLINT = 5212 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '1144', '0','1', '0', '2'),/* Cloche en bronze */
    (@BoxDesign, @BoxId, '0', '7', '1126', '0','1', '0', '2'),/* Cloche en argent */
    (@BoxDesign, @BoxId, '0', '7', '1125', '0','1', '0', '2')/* Cloche en or */
