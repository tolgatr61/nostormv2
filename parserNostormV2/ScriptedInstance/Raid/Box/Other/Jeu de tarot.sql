/* Info :
Rewards Vnum : 1904  Name : Jeu de tarot
*/
DECLARE @BoxId SMALLINT = 1904 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4046', '0','1', '0', '2'),/* Carte de tarot (le Fou) */
    (@BoxDesign, @BoxId, '0', '7', '4047', '0','1', '0', '2'),/* Carte de tarot (le Bateleur) */
    (@BoxDesign, @BoxId, '0', '7', '4048', '0','1', '0', '2'),/* Carte de tarot (l'Amoureux) */
    (@BoxDesign, @BoxId, '0', '7', '4049', '0','1', '0', '2'),/* Carte de tarot (l'Ermite) */
    (@BoxDesign, @BoxId, '0', '7', '4050', '0','1', '0', '2'),/* Carte de tarot (la Mort) */
    (@BoxDesign, @BoxId, '0', '7', '4051', '0','1', '0', '2'),/* Carte de tarot (le Diable) */
    (@BoxDesign, @BoxId, '0', '7', '4052', '0','1', '0', '2'),/* Carte de tarot (la Maison-Dieu) */
    (@BoxDesign, @BoxId, '0', '7', '4053', '0','1', '0', '2'),/* Carte de tarot (l'Étoile) */
    (@BoxDesign, @BoxId, '0', '7', '4054', '0','1', '0', '2'),/* Carte de tarot (la Lune) */
    (@BoxDesign, @BoxId, '0', '7', '4055', '0','1', '0', '2')/* Carte de tarot (le Soleil) */
