/* Info :
Rewards Vnum : 5419  Name : Coffre jackpot de la reine de la fête
*/
DECLARE @BoxId SMALLINT = 5419 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '2339', '0','5', '0', '2'),/* Cristal de feu */
    (@BoxDesign, @BoxId, '0', '7', '5412', '0','1', '0', '2'),/* Lot festif rose (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '5413', '0','1', '0', '2'),/* Lot festif jaune (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '5414', '0','1', '0', '2'),/* Lot festif bleu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '5372', '0','1', '0', '2'),/* Ailes titanesques */
    (@BoxDesign, @BoxId, '0', '7', '5087', '0','1', '0', '2'),/* Ailes flamboyantes */
    (@BoxDesign, @BoxId, '0', '7', '5203', '0','1', '0', '2'),/* Ailes algides */
    (@BoxDesign, @BoxId, '0', '7', '2282', '0','25', '0', '2'),/* Plume d'ange */
    (@BoxDesign, @BoxId, '0', '7', '1030', '0','25', '0', '2')/* Cristal de pleine lune */
