/* Info :
Rewards Vnum : 5599  Name : Lot d'uniforme de policier (permanent)
*/
DECLARE @BoxId SMALLINT = 5599 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4283', '0','1', '0', '2'),/* Casquette de policier (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4285', '0','1', '0', '2')/* Uniforme de policier (permanent) */
