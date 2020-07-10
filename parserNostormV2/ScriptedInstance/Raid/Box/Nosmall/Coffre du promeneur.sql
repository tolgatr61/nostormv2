/* Info :
Rewards Vnum : 5974  Name : Coffre du promeneur
*/
DECLARE @BoxId SMALLINT = 5974 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '2418', '0','1', '0', '2'),/* Coloration mystérieuse */
    (@BoxDesign, @BoxId, '0', '7', '1904', '0','1', '0', '2'),/* Jeu de tarot */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','1', '0', '2'),/* Bénédiction d'Ancelloan */
    (@BoxDesign, @BoxId, '0', '7', '1120', '0','1', '0', '2'),/* Grande potion spéciale */
    (@BoxDesign, @BoxId, '0', '7', '1945', '0','1', '0', '2'),/* Récipient scellé */
    (@BoxDesign, @BoxId, '0', '7', '1122', '0','1', '0', '2'),/* Eau de source de Cylloan */
    (@BoxDesign, @BoxId, '0', '7', '2160', '0','1', '0', '2'),/* Ailes de l'amitié */
    (@BoxDesign, @BoxId, '0', '7', '2173', '0','1', '0', '2')/* Haut-parleur */
