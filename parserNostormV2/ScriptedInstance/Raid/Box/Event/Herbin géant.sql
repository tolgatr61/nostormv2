/* Info :
Rewards Vnum : 302  Name : Herbin géant
*/
DECLARE @BoxId SMALLINT = 302 
DECLARE @BoxDesign SMALLINT = 7
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '348', '0','1', '0', '2'),/* Fée des herbins */
    (@BoxDesign, @BoxId, '0', '7', '2328', '0','1', '0', '2'),/* Dresseur animalier de Rodolphe */
    (@BoxDesign, @BoxId, '0', '7', '2172', '0','10', '0', '2'),/* Griffe de Slade */
    (@BoxDesign, @BoxId, '0', '7', '2312', '0','3', '0', '2'),/* Ailes de l'amitié (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '1232', '0','1', '0', '2'),/* Sac odorant */
    (@BoxDesign, @BoxId, '0', '7', '2092', '0','2', '0', '2'),/* Oeil du roi araignée */
    (@BoxDesign, @BoxId, '0', '7', '1271', '0','1', '0', '2'),/* Bon de fabrication */
    (@BoxDesign, @BoxId, '0', '7', '2173', '0','3', '0', '2'),/* Haut-parleur */
    (@BoxDesign, @BoxId, '0', '7', '1004', '0','10', '0', '2'),/* Grande potion de guérison */
    (@BoxDesign, @BoxId, '0', '7', '1010', '0','3', '0', '2'),/* Grande potion de récupération */
    (@BoxDesign, @BoxId, '0', '7', '1231', '0','10', '0', '2'),/* Bambou */
    (@BoxDesign, @BoxId, '0', '7', '2514', '0','1', '0', '2'),/* Petit rubis de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2515', '0','1', '0', '2'),/* Petit saphir de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2516', '0','1', '0', '2'),/* Petite obsidienne de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2517', '0','1', '0', '2'),/* Petite topaze de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2518', '0','1', '0', '2'),/* Rubis de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2519', '0','1', '0', '2'),/* Saphir de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2520', '0','1', '0', '2'),/* Obsidienne de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '2521', '0','1', '0', '2'),/* Topaze de l'accomplissement */
    (@BoxDesign, @BoxId, '0', '7', '9364', '0','1', '0', '2')/* a bien mangé */
