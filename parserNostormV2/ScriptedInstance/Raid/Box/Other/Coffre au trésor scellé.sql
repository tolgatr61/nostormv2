/* Info :
Rewards Vnum : 1949  Name : Coffre au trésor scellé
*/
DECLARE @BoxId SMALLINT = 1949 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '2173', '0','20', '0', '2'),/* Haut-parleur */
    (@BoxDesign, @BoxId, '0', '7', '1428', '0','10', '0', '2'),/* Parfum */
    (@BoxDesign, @BoxId, '0', '7', '1122', '0','2', '0', '2'),/* Eau de source de Cylloan */
    (@BoxDesign, @BoxId, '0', '7', '1913', '0','2', '0', '2'),/* Parchemin du costume d'Halloween */
    (@BoxDesign, @BoxId, '0', '7', '1947', '0','2', '0', '2'),/* Parchemin du costume glacé */
    (@BoxDesign, @BoxId, '0', '7', '1218', '0','1', '0', '2'),/* Parchemin protecteur d'équipement */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','1', '0', '2'),/* Bénédiction d'Ancelloan */
    (@BoxDesign, @BoxId, '0', '7', '2158', '0','1', '0', '2'),/* Croquettes de qualité */
    (@BoxDesign, @BoxId, '0', '7', '2187', '0','1', '0', '2'),/* Croquettes spéciales */
    (@BoxDesign, @BoxId, '0', '7', '2160', '0','2', '0', '2'),/* Ailes de l'amitié */
    (@BoxDesign, @BoxId, '0', '7', '2159', '0','1', '0', '2')/* Médicament pour partenaire */
