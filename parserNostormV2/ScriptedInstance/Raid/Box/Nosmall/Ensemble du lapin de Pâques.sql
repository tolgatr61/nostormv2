/* Info :
Rewards Vnum : 5733  Name : Ensemble du lapin de Pâques
*/
DECLARE @BoxId SMALLINT = 5733 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4429', '0','1', '0', '2'),/* Chapeau du lapin de Pâques (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4433', '0','1', '0', '2')/* Costume du lapin de Pâques (permanent) */
