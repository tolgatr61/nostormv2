/* Info :
Rewards Vnum : 5716  Name : Lot de diable de feu
*/
DECLARE @BoxId SMALLINT = 5716 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4411', '0','1', '0', '2'),/* Masque de diable de feu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4409', '0','1', '0', '2')/* Costume de diable de feu (permanent) */
