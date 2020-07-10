/* Info :
Rewards Vnum : 5734  Name : Boîte de raid du lapin de Pâques fou
*/
DECLARE @BoxId SMALLINT = 5734 
DECLARE @BoxDesign SMALLINT = 29
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4417', '0','1', '0', '2'),/* Carte de spécialiste pour partenaire du lapin de Pâques fou */
    (@BoxDesign, @BoxId, '0', '7', '4426', '0','1', '0', '2'),/* Chapeau du lapin de Pâques (3 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4427', '0','1', '0', '2'),/* Chapeau du lapin de Pâques (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4430', '0','1', '0', '2'),/* Costume du lapin de Pâques (3 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4431', '0','1', '0', '2'),/* Costume du lapin de Pâques (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '2334', '0','10', '0', '2'),/* Oeuf corrompu (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '2335', '0','10', '0', '2'),/* Oeuf purifié (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '2340', '0','10', '0', '2'),/* Part de gâteau de Pâques (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '5731', '0','1', '0', '2'),/* Coffre en forme d'oeuf de Pâques */
    (@BoxDesign, @BoxId, '0', '7', '2282', '0','10', '0', '2'),/* Plume d'ange */
    (@BoxDesign, @BoxId, '0', '7', '2514', '0','1', '0', '2'),/* Petit rubis de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2515', '0','1', '0', '2'),/* Petit saphir de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2516', '0','1', '0', '2'),/* Petite obsidienne de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2517', '0','1', '0', '2'),/* Petite topaze de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2518', '0','1', '0', '2'),/* Rubis de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2519', '0','1', '0', '2'),/* Saphir de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2520', '0','1', '0', '2'),/* Obsidienne de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2521', '0','1', '0', '2'),/* Topaze de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2328', '0','1', '0', '2'),/* Dresseur animalier de Rodolphe */
    (@BoxDesign, @BoxId, '0', '7', '9383', '0','1', '0', '2')/* Fou furieux */
