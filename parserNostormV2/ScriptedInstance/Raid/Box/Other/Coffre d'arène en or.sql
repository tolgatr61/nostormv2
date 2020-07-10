/* Info :
Rewards Vnum : 5941  Name : Coffre d'arène en or
*/
DECLARE @BoxId SMALLINT = 5941 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '2514', '0','1', '0', '2'),/* Petit rubis de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2515', '0','1', '0', '2'),/* Petit saphir de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2516', '0','1', '0', '2'),/* Petite obsidienne de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2517', '0','1', '0', '2'),/* Petite topaze de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2518', '0','1', '0', '2'),/* Rubis de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2519', '0','1', '0', '2'),/* Saphir de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','50', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '2285', '0','2', '0', '2'),/* Â2me étincelante bleue */
    (@BoxDesign, @BoxId, '0', '7', '2513', '0','1', '0', '2'),/* Coeur de dragon */
    (@BoxDesign, @BoxId, '0', '7', '4991', '0','1', '0', '2'),/* Rune de la vague */
    (@BoxDesign, @BoxId, '0', '7', '4992', '0','1', '0', '2'),/* Rune du nuage */
    (@BoxDesign, @BoxId, '0', '7', '4993', '0','1', '0', '2'),/* Rune du vent */
    (@BoxDesign, @BoxId, '0', '7', '4994', '0','1', '0', '2'),/* Rune du feu */
    (@BoxDesign, @BoxId, '0', '7', '4990', '0','1', '0', '2')/* Rune de l'éclair */
