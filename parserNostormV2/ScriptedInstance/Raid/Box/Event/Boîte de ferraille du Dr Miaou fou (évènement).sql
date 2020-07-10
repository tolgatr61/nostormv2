/* Info :
Rewards Vnum : 5843  Name : Boîte de ferraille du Dr Miaou fou (évènement)
*/
DECLARE @BoxId SMALLINT = 5843 
DECLARE @BoxDesign SMALLINT = 28
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '9350', '0','1', '0', '2'),/* Objet de test */
    (@BoxDesign, @BoxId, '0', '7', '4343', '0','1', '0', '2'),/* Objet de test du Dr Miaou fou */
    (@BoxDesign, @BoxId, '0', '7', '4345', '0','1', '0', '2'),/* Dr Miaou fou */
    (@BoxDesign, @BoxId, '0', '7', '4080', '0','1', '0', '2'),/* Ratufu d'unité spéciale */
    (@BoxDesign, @BoxId, '0', '7', '4125', '0','1', '0', '2'),/* Ratufu shogun */
    (@BoxDesign, @BoxId, '0', '7', '4126', '0','1', '0', '2'),/* Ratufu centurion */
    (@BoxDesign, @BoxId, '0', '7', '943', '0','1', '0', '2'),/* Ratufu boxeur */
    (@BoxDesign, @BoxId, '0', '7', '4063', '0','1', '0', '2'),/* Rusty Robby */
    (@BoxDesign, @BoxId, '0', '7', '980', '0','1', '0', '2'),/* Ratufu taureau */
    (@BoxDesign, @BoxId, '0', '7', '2158', '0','1', '0', '2'),/* Croquettes de qualité */
    (@BoxDesign, @BoxId, '0', '7', '2325', '0','1', '0', '2'),/* Drôles de croquettes */
    (@BoxDesign, @BoxId, '0', '7', '2418', '0','1', '0', '2'),/* Coloration mystérieuse */
    (@BoxDesign, @BoxId, '0', '7', '4340', '0','1', '0', '2'),/* Boosteur de vitesse magique (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '2396', '0','1', '0', '2'),/* Pierre précieuse verte */
    (@BoxDesign, @BoxId, '0', '7', '1945', '0','1', '0', '2'),/* Récipient scellé */
    (@BoxDesign, @BoxId, '0', '7', '4344', '0','1', '0', '2'),/* Costume de la sorcière blanche Laurena */
    (@BoxDesign, @BoxId, '0', '7', '4173', '0','1', '0', '2'),/* Carte de tarot lugubre [Esprit] */
    (@BoxDesign, @BoxId, '0', '7', '4174', '0','1', '0', '2'),/* Carte de tarot lugubre [Dracula] */
    (@BoxDesign, @BoxId, '0', '7', '4175', '0','1', '0', '2'),/* Carte de tarot lugubre [Épouvantail] */
    (@BoxDesign, @BoxId, '0', '7', '1918', '0','1', '0', '2')/* Panneau indicateur d'Halloween */
