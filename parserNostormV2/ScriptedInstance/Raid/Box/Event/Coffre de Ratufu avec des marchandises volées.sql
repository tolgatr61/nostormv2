/* Info :
Rewards Vnum : 5850  Name : Coffre de Ratufu avec des marchandises volées
*/
DECLARE @BoxId SMALLINT = 5850 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5950', '0','1', '0', '2'),/* Noisette en or */
    (@BoxDesign, @BoxId, '0', '7', '5949', '0','1', '0', '2'),/* Noisette en argent */
    (@BoxDesign, @BoxId, '0', '7', '5948', '0','1', '0', '2'),/* Noisette en bronze */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','1', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','2', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','3', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','4', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','5', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5892', '0','1', '0', '2'),/* Médaille d'honneur légendaire */
    (@BoxDesign, @BoxId, '0', '7', '5893', '0','1', '0', '2'),/* Médaille d'honneur mystérieuse */
    (@BoxDesign, @BoxId, '0', '7', '5894', '0','1', '0', '2'),/* Médaille d'honneur antique */
    (@BoxDesign, @BoxId, '0', '7', '5895', '0','1', '0', '2'),/* Médaille d'honneur excellente */
    (@BoxDesign, @BoxId, '0', '7', '5896', '0','1', '0', '2'),/* Médaille d'honneur de grande qualité */
    (@BoxDesign, @BoxId, '0', '7', '5897', '0','1', '0', '2'),/* Médaille d'honneur estimable */
    (@BoxDesign, @BoxId, '0', '7', '5898', '0','1', '0', '2'),/* Médaille d'honneur utile */
    (@BoxDesign, @BoxId, '0', '7', '5899', '0','1', '0', '2'),/* Médaille d'honneur */
    (@BoxDesign, @BoxId, '0', '7', '4800', '0','1', '0', '2'),/* Carte de spécialiste pour partenaire d'Ægir */
    (@BoxDesign, @BoxId, '0', '7', '4802', '0','1', '0', '2'),/* Carte de spécialiste pour partenaire de Barni */
    (@BoxDesign, @BoxId, '0', '7', '4803', '0','1', '0', '2'),/* Carte de spécialiste pour partenaire de Freya */
    (@BoxDesign, @BoxId, '0', '7', '5932', '0','1', '0', '2')/* Ticket de compétence pour partenaire (multiple) */
