/* Info :
Rewards Vnum : 5957  Name : Paquet-cadeau du roi des Ratufus
*/
DECLARE @BoxId SMALLINT = 5957 
DECLARE @BoxDesign SMALLINT = 96
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','1', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','2', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','3', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5947', '0','10', '0', '2'),/* Noisette */
    (@BoxDesign, @BoxId, '0', '7', '5948', '0','1', '0', '2'),/* Noisette en bronze */
    (@BoxDesign, @BoxId, '0', '7', '5949', '0','1', '0', '2'),/* Noisette en argent */
    (@BoxDesign, @BoxId, '0', '7', '5950', '0','1', '0', '2'),/* Noisette en or */
    (@BoxDesign, @BoxId, '0', '7', '447', '0','1', '0', '2'),/* Ratufu malade */
    (@BoxDesign, @BoxId, '0', '7', '398', '0','1', '0', '2'),/* Ratufu gladiateur */
    (@BoxDesign, @BoxId, '0', '7', '399', '0','1', '0', '2'),/* Ratufu destructeur de vermine */
    (@BoxDesign, @BoxId, '0', '7', '930', '0','1', '0', '2'),/* Lapin mignon */
    (@BoxDesign, @BoxId, '0', '7', '444', '0','1', '0', '2'),/* Ratufu père Noël */
    (@BoxDesign, @BoxId, '0', '7', '397', '0','1', '0', '2'),/* Ratufu brun */
    (@BoxDesign, @BoxId, '0', '7', '980', '0','1', '0', '2'),/* Ratufu taureau */
    (@BoxDesign, @BoxId, '0', '7', '4125', '0','1', '0', '2'),/* Ratufu shogun */
    (@BoxDesign, @BoxId, '0', '7', '4126', '0','1', '0', '2'),/* Ratufu centurion */
    (@BoxDesign, @BoxId, '0', '7', '4127', '0','1', '0', '2'),/* Ratufu Rodolphe */
    (@BoxDesign, @BoxId, '0', '7', '4065', '0','1', '0', '2')/* Costume du Ratufu aquatique (permanent) */
