/* Info :
Rewards Vnum : 5447  Name : Coffre à costume relax (h)
*/
DECLARE @BoxId SMALLINT = 5447 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '927', '0','1', '0', '2'),/* Costume hawaïen (h) (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '191', '0','1', '0', '2'),/* Chapeau chic (m) (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '954', '0','1', '0', '2'),/* Uniforme de marin bleu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '894', '0','1', '0', '2'),/* Costume de démon (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '646', '0','1', '0', '2'),/* Tenue d'explorateur (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '644', '0','1', '0', '2'),/* Tenue de heavy metal (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '642', '0','1', '0', '2'),/* Tenue ignifugée (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '640', '0','1', '0', '2'),/* Tenue forestière (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '638', '0','1', '0', '2'),/* Tenue militaire (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '636', '0','1', '0', '2'),/* Tenue en jeans (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '634', '0','1', '0', '2'),/* Tenue de sport à la mode (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '632', '0','1', '0', '2'),/* Tenue de sport enflammée (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '630', '0','1', '0', '2'),/* Tenue de sport ensoleillée (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '628', '0','1', '0', '2'),/* Tenue hip-hop (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '667', '0','1', '0', '2'),/* Hanbok de printemps (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '670', '0','1', '0', '2'),/* Hanbok à arc-en-ciel (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '624', '0','1', '0', '2'),/* Costume d'ours brun (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '626', '0','1', '0', '2')/* Costume de panda (permanent) */
