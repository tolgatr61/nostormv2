/* Info :
Rewards Vnum : 5951  Name : Paquet-cadeau « Loup dans une peau de mouton »
*/
DECLARE @BoxId SMALLINT = 5951 
DECLARE @BoxDesign SMALLINT = 97
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','3', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','4', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','5', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','6', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','7', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','8', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','12', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','16', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','25', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5948', '0','1', '0', '2'),/* Noisette en bronze */
    (@BoxDesign, @BoxId, '0', '7', '5949', '0','1', '0', '2'),/* Noisette en argent */
    (@BoxDesign, @BoxId, '0', '7', '5950', '0','1', '0', '2'),/* Noisette en or */
    (@BoxDesign, @BoxId, '0', '7', '1012', '0','99', '0', '2'),/* Graine de pouvoir */
    (@BoxDesign, @BoxId, '0', '7', '2379', '0','20', '0', '2'),/* Viande d'agneau */
    (@BoxDesign, @BoxId, '0', '7', '2047', '0','10', '0', '2'),/* Cuir normal */
    (@BoxDesign, @BoxId, '0', '7', '2002', '0','55', '0', '2'),/* Laine */
    (@BoxDesign, @BoxId, '0', '7', '2375', '0','50', '0', '2'),/* Brochette d'agneau chaude */
    (@BoxDesign, @BoxId, '0', '7', '2375', '0','99', '0', '2'),/* Brochette d'agneau chaude */
    (@BoxDesign, @BoxId, '0', '7', '5900', '0','1', '0', '2')/* Parchemin de masque carbonisé */
