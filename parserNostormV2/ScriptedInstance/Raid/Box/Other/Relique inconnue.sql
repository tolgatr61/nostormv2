/* Info :
Rewards Vnum : 1878  Name : Relique inconnue
*/
DECLARE @BoxId SMALLINT = 1878 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4056', '0','1', '0', '2'),/* Talisman de la foudre */
    (@BoxDesign, @BoxId, '0', '7', '4057', '0','1', '0', '2'),/* Talisman des vagues */
    (@BoxDesign, @BoxId, '0', '7', '4058', '0','1', '0', '2'),/* Talisman des nuages */
    (@BoxDesign, @BoxId, '0', '7', '4059', '0','1', '0', '2'),/* Talisman du vent */
    (@BoxDesign, @BoxId, '0', '7', '4060', '0','1', '0', '2'),/* Talisman du Feu */
    (@BoxDesign, @BoxId, '0', '7', '2347', '0','1', '0', '2'),/* Morceau de relique brisé */
    (@BoxDesign, @BoxId, '0', '7', '2348', '0','1', '0', '2'),/* Pierre précieuse brillante violette */
    (@BoxDesign, @BoxId, '0', '7', '2349', '0','1', '0', '2')/* Pierre précieuse brillante bleu ciel */
