/* Info :
Rewards Vnum : 5731  Name : Coffre en forme d'oeuf de Pâques
*/
DECLARE @BoxId SMALLINT = 5731 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '2335', '0','10', '0', '2'),/* Oeuf purifié (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '2340', '0','10', '0', '2'),/* Part de gâteau de Pâques (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '5730', '0','3', '0', '2'),/* Sceau de raid du lapin de Pâques fou */
    (@BoxDesign, @BoxId, '0', '7', '4418', '0','1', '0', '2'),/* Petit chapeau de fête du lapin de Pâques (3 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4419', '0','1', '0', '2'),/* Petit chapeau de fête du lapin de Pâques (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4422', '0','1', '0', '2'),/* Costume de fête du lapin de Pâques (3 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4423', '0','1', '0', '2'),/* Costume de fête du lapin de Pâques (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4426', '0','1', '0', '2'),/* Chapeau du lapin de Pâques (3 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4427', '0','1', '0', '2'),/* Chapeau du lapin de Pâques (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4430', '0','1', '0', '2'),/* Costume du lapin de Pâques (3 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4431', '0','1', '0', '2')/* Costume du lapin de Pâques (7 jours) */
