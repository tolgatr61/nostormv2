/* Info :
Rewards Vnum : 1621  Name : Boîte en or du nouvel an
*/
DECLARE @BoxId SMALLINT = 1621 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '548', '0','1', '0', '2'),/* Ayam (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '740', '0','1', '0', '2'),/* Qipao du phénix (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '563', '0','1', '0', '2'),/* Ebosi (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '681', '0','1', '0', '2'),/* Qipao du dragon (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '555', '0','1', '0', '2'),/* Pince à cheveux (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '728', '0','1', '0', '2'),/* Hanbok à azalées (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '557', '0','1', '0', '2'),/* Hogeon (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '752', '0','1', '0', '2'),/* Kimono de kunoichi (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '749', '0','1', '0', '2'),/* Kimono de lys (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '5214', '0','4', '0', '2'),/* Parchemin du déplacement */
    (@BoxDesign, @BoxId, '0', '7', '560', '0','1', '0', '2'),/* Chapeau asiatique (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '551', '0','1', '0', '2'),/* Couronne d'impératrice (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '1988', '0','5', '0', '2'),/* Feu d'artifice en coeur (rouge) */
    (@BoxDesign, @BoxId, '0', '7', '1987', '0','5', '0', '2'),/* Feu d'artifice en coeur (bleu) */
    (@BoxDesign, @BoxId, '0', '7', '1985', '0','5', '0', '2'),/* Feu d'artifice fontaine (bleu) */
    (@BoxDesign, @BoxId, '0', '7', '1986', '0','5', '0', '2')/* Feu d'artifice fontaine (jaune) */
