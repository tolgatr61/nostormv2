/* Info :
Rewards Vnum : 5449  Name : Boîte à chapeaux (f)
*/
DECLARE @BoxId SMALLINT = 5449 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '938', '0','1', '0', '2'),/* Bandeau hawaïen (f) (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '198', '0','1', '0', '2'),/* Serre-tête de starlette (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '966', '0','1', '0', '2'),/* Bonnet de matelot bleu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '897', '0','1', '0', '2'),/* Serre-tête féérique (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '549', '0','1', '0', '2'),/* Ayam (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '552', '0','1', '0', '2'),/* Couronne d'impératrice (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '555', '0','1', '0', '2'),/* Pince à cheveux (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '836', '0','1', '0', '2'),/* Chapeau de dalmatien (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '839', '0','1', '0', '2'),/* Chapeau de rottweiler (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '842', '0','1', '0', '2'),/* Chapeau de chat siamois (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '845', '0','1', '0', '2'),/* Chapeau de chat bleu russe (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '848', '0','1', '0', '2'),/* Oreilles de lapin taquines (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '851', '0','1', '0', '2'),/* Oreilles de lapin charmantes (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '854', '0','1', '0', '2'),/* Chapeau de lion clair (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '857', '0','1', '0', '2'),/* Chapeau de lion foncé (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '653', '0','1', '0', '2'),/* Chapeau d'ours brun (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '652', '0','1', '0', '2'),/* Chapeau de panda (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '655', '0','1', '0', '2')/* Chapeau d'ours en peluche (permanent) */
