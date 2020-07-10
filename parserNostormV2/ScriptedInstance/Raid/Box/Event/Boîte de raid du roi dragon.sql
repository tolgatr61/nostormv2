/* Info :
Rewards Vnum : 5991  Name : Boîte de raid du roi dragon
*/
DECLARE @BoxId SMALLINT = 5991 
DECLARE @BoxDesign SMALLINT = 22
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4815', '0','1', '0', '2'),/* Carte de spécialiste pour partenaire de Lucie Longoreil */
    (@BoxDesign, @BoxId, '0', '7', '2396', '0','1', '0', '2'),/* Pierre précieuse verte */
    (@BoxDesign, @BoxId, '0', '7', '2282', '0','10', '0', '2'),/* Plume d'ange */
    (@BoxDesign, @BoxId, '0', '7', '5974', '0','1', '0', '2'),/* Coffre du promeneur */
    (@BoxDesign, @BoxId, '0', '7', '5982', '0','1', '0', '2'),/* Boîte de raid des diablotins */
    (@BoxDesign, @BoxId, '0', '7', '5963', '0','1', '0', '2'),/* Coffre aux trésors de Foxy */
    (@BoxDesign, @BoxId, '0', '7', '5941', '0','1', '0', '2'),/* Coffre d'arène en or */
    (@BoxDesign, @BoxId, '0', '7', '5960', '0','1', '0', '2'),/* Coffre au trésor brillant de Caligor */
    (@BoxDesign, @BoxId, '0', '7', '5985', '0','1', '0', '2'),/* Coffre de sorcière antique de Laurena */
    (@BoxDesign, @BoxId, '0', '7', '4135', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (h) (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4136', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (h) (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4139', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (f) (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4140', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (f) (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4143', '0','1', '0', '2'),/* Costume de lapin cotonneux (h) (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4144', '0','1', '0', '2'),/* Costume de lapin cotonneux (h) (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4147', '0','1', '0', '2'),/* Costume de lapin cotonneux (f) (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4148', '0','1', '0', '2'),/* Costume de lapin cotonneux (f) (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '9377', '0','1', '0', '2')/* Oreille tombante */
