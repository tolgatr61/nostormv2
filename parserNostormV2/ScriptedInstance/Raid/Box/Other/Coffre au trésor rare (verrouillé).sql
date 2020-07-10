/* Info :
Rewards Vnum : 5723  Name : Coffre au trésor rare (verrouillé)
*/
DECLARE @BoxId SMALLINT = 5723 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','120', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '1122', '0','60', '0', '2'),/* Eau de source de Cylloan */
    (@BoxDesign, @BoxId, '0', '7', '2282', '0','40', '0', '2'),/* Plume d'ange */
    (@BoxDesign, @BoxId, '0', '7', '1428', '0','40', '0', '2'),/* Parfum */
    (@BoxDesign, @BoxId, '0', '7', '1362', '0','40', '0', '2'),/* Bénédiction de la gemme d'âme */
    (@BoxDesign, @BoxId, '0', '7', '1945', '0','40', '0', '2'),/* Récipient scellé */
    (@BoxDesign, @BoxId, '0', '7', '2158', '0','15', '0', '2'),/* Croquettes de qualité */
    (@BoxDesign, @BoxId, '0', '7', '5370', '0','12', '0', '2'),/* Potion d'expérience pour fée */
    (@BoxDesign, @BoxId, '0', '7', '1296', '0','7', '0', '2'),/* Renforcement féérique */
    (@BoxDesign, @BoxId, '0', '7', '1904', '0','5', '0', '2'),/* Jeu de tarot */
    (@BoxDesign, @BoxId, '0', '7', '5639', '0','1', '0', '2'),/* Lot des danseuses (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '5638', '0','1', '0', '2'),/* Lot du désert (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4414', '0','1', '0', '2'),/* Ratufu chanceux */
    (@BoxDesign, @BoxId, '0', '7', '4415', '0','1', '0', '2'),/* Ratufu superchanceux */
    (@BoxDesign, @BoxId, '0', '7', '4262', '0','1', '0', '2')/* Amulette héroïque de la bénédiction (aléatoire) */
