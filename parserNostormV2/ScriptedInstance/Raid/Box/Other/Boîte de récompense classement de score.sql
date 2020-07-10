/* Info :
Rewards Vnum : 5995  Name : Boîte de récompense classement de score
*/
DECLARE @BoxId SMALLINT = 5995 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '1218', '0','5', '0', '2'),/* Parchemin protecteur d'équipement */
    (@BoxDesign, @BoxId, '0', '7', '1428', '0','50', '0', '2'),/* Parfum */
    (@BoxDesign, @BoxId, '0', '7', '1023', '0','2', '0', '2'),/* Cellon (niveau 7) */
    (@BoxDesign, @BoxId, '0', '7', '1219', '0','1', '0', '2'),/* Parchemin de libération */
    (@BoxDesign, @BoxId, '0', '7', '1363', '0','1', '0', '2'),/* Parchemin protecteur inférieur pour carte de spécialiste */
    (@BoxDesign, @BoxId, '0', '7', '1364', '0','1', '0', '2'),/* Parchemin protecteur supérieur pour carte de spécialiste */
    (@BoxDesign, @BoxId, '0', '7', '5959', '0','10', '0', '2'),/* Esprit de Caligor */
    (@BoxDesign, @BoxId, '0', '7', '5983', '0','20', '0', '2'),/* Pierre précieuse de Laurena */
    (@BoxDesign, @BoxId, '0', '7', '2513', '0','3', '0', '2'),/* Coeur de dragon */
    (@BoxDesign, @BoxId, '0', '7', '1120', '0','99', '0', '2'),/* Grande potion spéciale */
    (@BoxDesign, @BoxId, '0', '7', '1122', '0','99', '0', '2'),/* Eau de source de Cylloan */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','3', '0', '2')/* Bénédiction d'Ancelloan */
