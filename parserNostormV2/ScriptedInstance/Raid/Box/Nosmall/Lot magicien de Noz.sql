/* Info :
Rewards Vnum : 9147  Name : Lot magicien de Noz
*/
DECLARE @BoxId SMALLINT = 9147 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4542', '0','1', '0', '2'),/* Chapeau magicien de Noz (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4543', '0','1', '0', '2')/* Costume magicien de Noz (permanent) */
