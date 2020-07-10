/* Info :
Rewards Vnum : 5841  Name : Lot de runes de mère Nature
*/
DECLARE @BoxId SMALLINT = 5841 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4356', '0','1', '0', '2'),/* Rune de foudre [mère Nature] */
    (@BoxDesign, @BoxId, '0', '7', '4357', '0','1', '0', '2'),/* Rune d'arbre [mère Nature] */
    (@BoxDesign, @BoxId, '0', '7', '4358', '0','1', '0', '2'),/* Rune des nuages [mère Nature] */
    (@BoxDesign, @BoxId, '0', '7', '4359', '0','1', '0', '2'),/* Rune du feu [mère Nature] */
    (@BoxDesign, @BoxId, '0', '7', '4360', '0','1', '0', '2'),/* Rune de foudre rare [mère Nature] */
    (@BoxDesign, @BoxId, '0', '7', '4361', '0','1', '0', '2'),/* Rune d'arbre rare [mère Nature] */
    (@BoxDesign, @BoxId, '0', '7', '4362', '0','1', '0', '2'),/* Rune des nuages rare [mère Nature] */
    (@BoxDesign, @BoxId, '0', '7', '4363', '0','1', '0', '2')/* Rune du feu rare [mère Nature] */
