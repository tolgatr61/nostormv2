/* Info :
Rewards Vnum : 5051  Name : Ensemble de Ratufu aquatique
*/
DECLARE @BoxId SMALLINT = 5051 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4064', '0','1', '0', '2'),/* Chapeau de Ratufu aquatique (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4065', '0','1', '0', '2')/* Costume du Ratufu aquatique (permanent) */
