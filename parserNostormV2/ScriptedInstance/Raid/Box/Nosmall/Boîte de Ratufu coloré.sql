/* Info :
Rewards Vnum : 5350  Name : Boîte de Ratufu coloré
*/
DECLARE @BoxId SMALLINT = 5350 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4085', '0','1', '0', '2'),/* Ratufu noir */
    (@BoxDesign, @BoxId, '0', '7', '4086', '0','1', '0', '2'),/* Ratufu bleu */
    (@BoxDesign, @BoxId, '0', '7', '4087', '0','1', '0', '2'),/* Ratufu vert */
    (@BoxDesign, @BoxId, '0', '7', '4088', '0','1', '0', '2'),/* Ratufu rouge */
    (@BoxDesign, @BoxId, '0', '7', '4089', '0','1', '0', '2'),/* Ratufu rose */
    (@BoxDesign, @BoxId, '0', '7', '4090', '0','1', '0', '2'),/* Ratufu turquoise */
    (@BoxDesign, @BoxId, '0', '7', '4091', '0','1', '0', '2'),/* Ratufu jaune */
    (@BoxDesign, @BoxId, '0', '7', '397', '0','1', '0', '2')/* Ratufu brun */
