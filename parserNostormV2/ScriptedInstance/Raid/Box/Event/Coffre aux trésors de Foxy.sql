/* Info :
Rewards Vnum : 5963  Name : Coffre aux trésors de Foxy
*/
DECLARE @BoxId SMALLINT = 5963 
DECLARE @BoxDesign SMALLINT = 18
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4807', '0','1', '0', '2'),/* Carte de spécialiste pour partenaire de Foxy */
    (@BoxDesign, @BoxId, '0', '7', '4818', '0','1', '0', '2'),/* Carte de spécialiste pour partenaire de Fiona */
    (@BoxDesign, @BoxId, '0', '7', '2520', '0','1', '0', '2'),/* Obsidienne de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '950', '0','1', '0', '2'),/* Ratufu courge */
    (@BoxDesign, @BoxId, '0', '7', '4173', '0','1', '0', '2'),/* Carte de tarot lugubre [Esprit] */
    (@BoxDesign, @BoxId, '0', '7', '4174', '0','1', '0', '2'),/* Carte de tarot lugubre [Dracula] */
    (@BoxDesign, @BoxId, '0', '7', '4175', '0','1', '0', '2'),/* Carte de tarot lugubre [Épouvantail] */
    (@BoxDesign, @BoxId, '0', '7', '4169', '0','1', '0', '2'),/* Chapeau citrouille incandescent (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4170', '0','1', '0', '2'),/* Chapeau citrouille incandescent (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4171', '0','1', '0', '2'),/* Chapeau citrouille incandescent (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4172', '0','1', '0', '2'),/* Chapeau citrouille incandescent (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '1918', '0','1', '0', '2'),/* Panneau indicateur d'Halloween */
    (@BoxDesign, @BoxId, '0', '7', '1004', '0','20', '0', '2'),/* Grande potion de guérison */
    (@BoxDesign, @BoxId, '0', '7', '1007', '0','20', '0', '2'),/* Grande potion de mana */
    (@BoxDesign, @BoxId, '0', '7', '1010', '0','20', '0', '2'),/* Grande potion de récupération */
    (@BoxDesign, @BoxId, '0', '7', '9349', '0','1', '0', '2')/* Roublard */
