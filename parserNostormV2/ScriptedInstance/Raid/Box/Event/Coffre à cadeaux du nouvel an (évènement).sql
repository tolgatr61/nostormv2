/* Info :
Rewards Vnum : 5083  Name : Coffre à cadeaux du nouvel an (évènement)
*/
DECLARE @BoxId SMALLINT = 5083 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '448', '0','1', '0', '2'),/* Cochon porte-bonheur du nouvel an */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','20', '0', '2'),/* Bénédiction d'Ancelloan */
    (@BoxDesign, @BoxId, '0', '7', '5084', '0','1', '0', '2'),/* Parchemin du costume de Ratufu (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '1365', '0','1', '0', '2'),/* Pierre de résurrection d'âme */
    (@BoxDesign, @BoxId, '0', '7', '870', '0','1', '0', '2'),/* Chapeau de lièvre de mars (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '822', '0','1', '0', '2'),/* Costume de lièvre de mars (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '849', '0','1', '0', '2'),/* Oreilles de lapin charmantes (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '797', '0','1', '0', '2'),/* Costume de lapin charmant (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '2399', '0','1', '0', '2'),/* Carotte dorée du nouvel an (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '2400', '0','1', '0', '2'),/* Jus de carotte frais (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '2401', '0','1', '0', '2')/* Encas de carotte délicieux (évènement) */
