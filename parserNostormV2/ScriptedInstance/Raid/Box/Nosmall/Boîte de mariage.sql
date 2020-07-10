/* Info :
Rewards Vnum : 5018  Name : Boîte de mariage
*/
DECLARE @BoxId SMALLINT = 5018 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '1981', '0','1', '0', '2'),/* Flèche de Cupidon */
    (@BoxDesign, @BoxId, '0', '7', '986', '0','2', '0', '2'),/* Coiffure de mariage (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '982', '0','2', '0', '2'),/* Tenue de mariage (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '1984', '0','10', '0', '2'),/* Feu d'artifice double */
    (@BoxDesign, @BoxId, '0', '7', '1986', '0','10', '0', '2'),/* Feu d'artifice fontaine (jaune) */
    (@BoxDesign, @BoxId, '0', '7', '1988', '0','10', '0', '2')/* Feu d'artifice en coeur (rouge) */
