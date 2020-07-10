/* Info :
Rewards Vnum : 5844  Name : Caisse de provisions de la résistance (évènement)
*/
DECLARE @BoxId SMALLINT = 5844 
DECLARE @BoxDesign SMALLINT = 28
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4343', '0','1', '0', '2'),/* Objet de test du Dr Miaou fou */
    (@BoxDesign, @BoxId, '0', '7', '4345', '0','1', '0', '2'),/* Dr Miaou fou */
    (@BoxDesign, @BoxId, '0', '7', '4344', '0','1', '0', '2'),/* Costume de la sorcière blanche Laurena */
    (@BoxDesign, @BoxId, '0', '7', '888', '0','1', '0', '2'),/* Ratufu aquatique */
    (@BoxDesign, @BoxId, '0', '7', '930', '0','1', '0', '2'),/* Lapin mignon */
    (@BoxDesign, @BoxId, '0', '7', '950', '0','1', '0', '2'),/* Ratufu courge */
    (@BoxDesign, @BoxId, '0', '7', '4063', '0','1', '0', '2'),/* Rusty Robby */
    (@BoxDesign, @BoxId, '0', '7', '447', '0','1', '0', '2'),/* Ratufu malade */
    (@BoxDesign, @BoxId, '0', '7', '2158', '0','1', '0', '2'),/* Croquettes de qualité */
    (@BoxDesign, @BoxId, '0', '7', '2418', '0','1', '0', '2'),/* Coloration mystérieuse */
    (@BoxDesign, @BoxId, '0', '7', '1945', '0','1', '0', '2'),/* Récipient scellé */
    (@BoxDesign, @BoxId, '0', '7', '2325', '0','1', '0', '2'),/* Drôles de croquettes */
    (@BoxDesign, @BoxId, '0', '7', '4173', '0','1', '0', '2'),/* Carte de tarot lugubre [Esprit] */
    (@BoxDesign, @BoxId, '0', '7', '4174', '0','1', '0', '2'),/* Carte de tarot lugubre [Dracula] */
    (@BoxDesign, @BoxId, '0', '7', '4175', '0','1', '0', '2'),/* Carte de tarot lugubre [Épouvantail] */
    (@BoxDesign, @BoxId, '0', '7', '1918', '0','1', '0', '2'),/* Panneau indicateur d'Halloween */
    (@BoxDesign, @BoxId, '0', '7', '1915', '0','1', '0', '2'),/* Parchemin du costume d'Halloween (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '4169', '0','1', '0', '2'),/* Chapeau citrouille incandescent (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '5904', '0','3', '0', '2'),/* Repas carbonisé de Fafnir */
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','5', '0', '2')/* Potion de récupération géante */
