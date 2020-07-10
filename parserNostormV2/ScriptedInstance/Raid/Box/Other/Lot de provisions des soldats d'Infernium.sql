/* Info :
Rewards Vnum : 5861  Name : Lot de provisions des soldats d'Infernium
*/
DECLARE @BoxId SMALLINT = 5861 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '1246', '0','10', '0', '2'),/* Potion d'attaque */
    (@BoxDesign, @BoxId, '0', '7', '1247', '0','10', '0', '2'),/* Potion de défense */
    (@BoxDesign, @BoxId, '0', '7', '1248', '0','10', '0', '2'),/* Potion d'énergie */
    (@BoxDesign, @BoxId, '0', '7', '1249', '0','10', '0', '2'),/* Potion d'augmentation de l'expérience */
    (@BoxDesign, @BoxId, '0', '7', '2436', '0','1', '0', '2'),/* Essence de Sellaim */
    (@BoxDesign, @BoxId, '0', '7', '2439', '0','1', '0', '2'),/* Essence de Turik */
    (@BoxDesign, @BoxId, '0', '7', '2805', '0','40', '0', '2'),/* Cristal de la balance */
    (@BoxDesign, @BoxId, '0', '7', '2818', '0','10', '0', '2'),/* Fil argenté */
    (@BoxDesign, @BoxId, '0', '7', '5881', '0','35', '0', '2'),/* Pierre d'énergie ténébreuse */
    (@BoxDesign, @BoxId, '0', '7', '2435', '0','2', '0', '2'),/* Essence de l'abîme */
    (@BoxDesign, @BoxId, '0', '7', '2819', '0','5', '0', '2'),/* Fil doré */
    (@BoxDesign, @BoxId, '0', '7', '2816', '0','30', '0', '2')/* Morceau de métal inconnu */
