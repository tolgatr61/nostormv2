/* Info :
Rewards Vnum : 5851  Name : Coffre viking ancien
*/
DECLARE @BoxId SMALLINT = 5851 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '2611', '0','1', '0', '2'),/* Cor de chasse de Fafnir */
    (@BoxDesign, @BoxId, '0', '7', '5903', '0','1', '0', '2'),/* Schéma du cor de chasse de Fafnir */
    (@BoxDesign, @BoxId, '0', '7', '4304', '0','1', '0', '2'),/* Clé de Frigg */
    (@BoxDesign, @BoxId, '0', '7', '4305', '0','1', '0', '2'),/* Clé de Ragnar */
    (@BoxDesign, @BoxId, '0', '7', '4306', '0','1', '0', '2'),/* Clé d'Erdimine */
    (@BoxDesign, @BoxId, '0', '7', '4301', '0','1', '0', '2'),/* Casque viking (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4303', '0','1', '0', '2'),/* Armure viking (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '2395', '0','1', '0', '2'),/* Pierre précieuse bleue */
    (@BoxDesign, @BoxId, '0', '7', '2395', '0','2', '0', '2'),/* Pierre précieuse bleue */
    (@BoxDesign, @BoxId, '0', '7', '2395', '0','3', '0', '2'),/* Pierre précieuse bleue */
    (@BoxDesign, @BoxId, '0', '7', '2396', '0','1', '0', '2'),/* Pierre précieuse verte */
    (@BoxDesign, @BoxId, '0', '7', '2396', '0','2', '0', '2'),/* Pierre précieuse verte */
    (@BoxDesign, @BoxId, '0', '7', '2396', '0','3', '0', '2'),/* Pierre précieuse verte */
    (@BoxDesign, @BoxId, '0', '7', '2397', '0','1', '0', '2'),/* Pierre précieuse jaune */
    (@BoxDesign, @BoxId, '0', '7', '2397', '0','2', '0', '2'),/* Pierre précieuse jaune */
    (@BoxDesign, @BoxId, '0', '7', '2397', '0','3', '0', '2'),/* Pierre précieuse jaune */
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','55', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '1025', '0','1', '0', '2'),/* Cellon (niveau 9) */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','1', '0', '2')/* Bénédiction d'Ancelloan */
