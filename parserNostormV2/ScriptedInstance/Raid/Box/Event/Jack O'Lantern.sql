/* Info :
Rewards Vnum : 302  Name : Jack O'Lantern
*/
DECLARE @BoxId SMALLINT = 302 
DECLARE @BoxDesign SMALLINT = 10
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '950', '0','1', '0', '2'),/* Ratufu courge */
    (@BoxDesign, @BoxId, '0', '7', '4173', '0','1', '0', '2'),/* Carte de tarot lugubre [Esprit] */
    (@BoxDesign, @BoxId, '0', '7', '4174', '0','1', '0', '2'),/* Carte de tarot lugubre [Dracula] */
    (@BoxDesign, @BoxId, '0', '7', '4175', '0','1', '0', '2'),/* Carte de tarot lugubre [Épouvantail] */
    (@BoxDesign, @BoxId, '0', '7', '4169', '0','1', '0', '2'),/* Chapeau citrouille incandescent (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4170', '0','1', '0', '2'),/* Chapeau citrouille incandescent (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4171', '0','1', '0', '2'),/* Chapeau citrouille incandescent (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4172', '0','1', '0', '2'),/* Chapeau citrouille incandescent (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '2281', '0','1', '0', '2'),/* Citrouille */
    (@BoxDesign, @BoxId, '0', '7', '1918', '0','1', '0', '2'),/* Panneau indicateur d'Halloween */
    (@BoxDesign, @BoxId, '0', '7', '9348', '0','1', '0', '2')/* Horreur */
