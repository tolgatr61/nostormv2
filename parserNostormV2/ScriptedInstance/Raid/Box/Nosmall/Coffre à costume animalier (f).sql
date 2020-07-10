/* Info :
Rewards Vnum : 5446  Name : Coffre à costume animalier (f)
*/
DECLARE @BoxId SMALLINT = 5446 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '732', '0','1', '0', '2'),/* Hanbok à crocus (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '735', '0','1', '0', '2'),/* Hanbok à roses (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '738', '0','1', '0', '2'),/* Qipao lavande (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '741', '0','1', '0', '2'),/* Qipao du phénix (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '744', '0','1', '0', '2'),/* Qipao noir (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '747', '0','1', '0', '2'),/* Kimono à fleurs de cerisier (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '750', '0','1', '0', '2'),/* Kimono de lys (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '784', '0','1', '0', '2'),/* Costume de dalmatien (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '787', '0','1', '0', '2'),/* Costume de rottweiler (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '790', '0','1', '0', '2'),/* Costume siamois (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '793', '0','1', '0', '2'),/* Costume de chat bleu russe (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '796', '0','1', '0', '2'),/* Costume de lapin taquin (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '799', '0','1', '0', '2'),/* Costume de lapin charmant (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '806', '0','1', '0', '2'),/* Costume de lion clair (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '809', '0','1', '0', '2'),/* Costume de lion sombre (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '625', '0','1', '0', '2'),/* Costume d'ours polaire (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '627', '0','1', '0', '2')/* Costume d'ours en peluche (permanent) */
