/* Info :
Rewards Vnum : 5450  Name : Boîte à chapeaux (h)
*/
DECLARE @BoxId SMALLINT = 5450 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '935', '0','1', '0', '2'),/* Bandeau hawaïen (h) (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '821', '0','1', '0', '2'),/* Costume de korat (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '962', '0','1', '0', '2'),/* Bonnet de marin bleu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '915', '0','1', '0', '2'),/* Chapeau de démon (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '558', '0','1', '0', '2'),/* Hogeon (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '561', '0','1', '0', '2'),/* Chapeau asiatique (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '564', '0','1', '0', '2'),/* Ebosi (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '860', '0','1', '0', '2'),/* Chapeau de bouledogue (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '863', '0','1', '0', '2'),/* Chapeau de saint-bernard (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '866', '0','1', '0', '2'),/* Chapeau de chat birman (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '869', '0','1', '0', '2'),/* Chapeau de korat (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '872', '0','1', '0', '2'),/* Chapeau de lièvre de mars (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '875', '0','1', '0', '2'),/* Chapeau de lièvre blanc (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '881', '0','1', '0', '2'),/* Chapeau de lion noir (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '878', '0','1', '0', '2'),/* Chapeau de lion doré (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '653', '0','1', '0', '2'),/* Chapeau d'ours brun (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '652', '0','1', '0', '2'),/* Chapeau de panda (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '654', '0','1', '0', '2'),/* Chapeau d'ours polaire (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '655', '0','1', '0', '2')/* Chapeau d'ours en peluche (permanent) */
