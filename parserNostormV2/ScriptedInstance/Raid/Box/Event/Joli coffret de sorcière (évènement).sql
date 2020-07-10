/* Info :
Rewards Vnum : 5842  Name : Joli coffret de sorcière (évènement)
*/
DECLARE @BoxId SMALLINT = 5842 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4343', '0','1', '0', '2'),/* Objet de test du Dr Miaou fou */
    (@BoxDesign, @BoxId, '0', '7', '4813', '0','1', '0', '2'),/* Carte de spécialiste pour partenaire de Laurena */
    (@BoxDesign, @BoxId, '0', '7', '4345', '0','1', '0', '2'),/* Dr Miaou fou */
    (@BoxDesign, @BoxId, '0', '7', '4066', '0','1', '0', '2'),/* Super Ratufu courge */
    (@BoxDesign, @BoxId, '0', '7', '4181', '0','1', '0', '2'),/* Chapeau magique de la Lumière (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4185', '0','1', '0', '2'),/* Tunique magique de la Lumière (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4183', '0','1', '0', '2'),/* Chapeau magique de l'Obscurité (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4187', '0','1', '0', '2'),/* Robe magique de l'Obscurité (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4344', '0','1', '0', '2'),/* Costume de la sorcière blanche Laurena */
    (@BoxDesign, @BoxId, '0', '7', '457', '0','1', '0', '2'),/* Chapeau de rat (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '561', '0','1', '0', '2'),/* Chapeau asiatique (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '790', '0','1', '0', '2'),/* Costume siamois (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '894', '0','1', '0', '2'),/* Costume de démon (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4172', '0','1', '0', '2'),/* Chapeau citrouille incandescent (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '2158', '0','1', '0', '2'),/* Croquettes de qualité */
    (@BoxDesign, @BoxId, '0', '7', '2418', '0','1', '0', '2'),/* Coloration mystérieuse */
    (@BoxDesign, @BoxId, '0', '7', '4173', '0','1', '0', '2'),/* Carte de tarot lugubre [Esprit] */
    (@BoxDesign, @BoxId, '0', '7', '4174', '0','1', '0', '2'),/* Carte de tarot lugubre [Dracula] */
    (@BoxDesign, @BoxId, '0', '7', '4175', '0','1', '0', '2'),/* Carte de tarot lugubre [Épouvantail] */
    (@BoxDesign, @BoxId, '0', '7', '5904', '0','5', '0', '2')/* Repas carbonisé de Fafnir */
