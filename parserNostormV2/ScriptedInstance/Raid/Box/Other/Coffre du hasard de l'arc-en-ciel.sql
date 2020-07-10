/* Info :
Rewards Vnum : 5746  Name : Coffre du hasard de l'arc-en-ciel
*/
DECLARE @BoxId SMALLINT = 5746 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '2282', '0','10', '0', '2'),/* Plume d'ange */
    (@BoxDesign, @BoxId, '0', '7', '2282', '0','20', '0', '2'),/* Plume d'ange */
    (@BoxDesign, @BoxId, '0', '7', '2282', '0','30', '0', '2'),/* Plume d'ange */
    (@BoxDesign, @BoxId, '0', '7', '1030', '0','5', '0', '2'),/* Cristal de pleine lune */
    (@BoxDesign, @BoxId, '0', '7', '1030', '0','10', '0', '2'),/* Cristal de pleine lune */
    (@BoxDesign, @BoxId, '0', '7', '1030', '0','25', '0', '2'),/* Cristal de pleine lune */
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','20', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','50', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '1246', '0','5', '0', '2'),/* Potion d'attaque */
    (@BoxDesign, @BoxId, '0', '7', '1247', '0','5', '0', '2'),/* Potion de défense */
    (@BoxDesign, @BoxId, '0', '7', '1248', '0','5', '0', '2'),/* Potion d'énergie */
    (@BoxDesign, @BoxId, '0', '7', '2321', '0','2', '0', '2'),/* Dresseur animalier des pirates */
    (@BoxDesign, @BoxId, '0', '7', '2321', '0','5', '0', '2')/* Dresseur animalier des pirates */
