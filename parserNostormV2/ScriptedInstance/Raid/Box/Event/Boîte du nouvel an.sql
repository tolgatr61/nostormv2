/* Info :
Rewards Vnum : 1622  Name : Boîte du nouvel an
*/
DECLARE @BoxId SMALLINT = 1622 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '547', '0','1', '0', '2'),/* Ayam (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '739', '0','1', '0', '2'),/* Qipao du phénix (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '562', '0','1', '0', '2'),/* Ebosi (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '680', '0','1', '0', '2'),/* Qipao du dragon (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '553', '0','1', '0', '2'),/* Pince à cheveux (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '727', '0','1', '0', '2'),/* Hanbok à azalées (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '556', '0','1', '0', '2'),/* Hogeon (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '751', '0','1', '0', '2'),/* Kimono de kunoichi (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '748', '0','1', '0', '2'),/* Kimono de lys (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '1984', '0','5', '0', '2'),/* Feu d'artifice double */
    (@BoxDesign, @BoxId, '0', '7', '1983', '0','5', '0', '2'),/* Feu d'artifice simple */
    (@BoxDesign, @BoxId, '0', '7', '1582', '0','10', '0', '2')/* Jouet du nouvel an */
