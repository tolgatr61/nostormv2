/* Info :
Rewards Vnum : 5732  Name : Coffre du costume de fête du lapin de Pâques
*/
DECLARE @BoxId SMALLINT = 5732 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4421', '0','1', '0', '2'),/* Petit chapeau de fête du lapin de Pâques (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4425', '0','1', '0', '2')/* Costume de fête du lapin de Pâques (permanent) */
