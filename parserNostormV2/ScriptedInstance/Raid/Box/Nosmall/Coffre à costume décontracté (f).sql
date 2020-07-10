/* Info :
Rewards Vnum : 5445  Name : Coffre à costume décontracté (f)
*/
DECLARE @BoxId SMALLINT = 5445 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '932', '0','1', '0', '2'),/* Costume hawaïen (f) (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '195', '0','1', '0', '2'),/* Uniforme scolaire de starlette (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '958', '0','1', '0', '2'),/* Uniforme de matelot bleu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '753', '0','1', '0', '2'),/* Kimono de kunoichi (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '891', '0','1', '0', '2'),/* Costume de fée (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '639', '0','1', '0', '2'),/* Uniforme scolaire jaune (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '641', '0','1', '0', '2'),/* Uniforme scolaire violet (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '637', '0','1', '0', '2'),/* Uniforme scolaire vert (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '635', '0','1', '0', '2'),/* Tenue de sport rose (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '633', '0','1', '0', '2'),/* Tenue de sport bleu-ciel (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '631', '0','1', '0', '2'),/* Tenue de sport corail (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '629', '0','1', '0', '2'),/* Tenue de sport blanche et noire (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '694', '0','1', '0', '2'),/* Costume rose feu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '697', '0','1', '0', '2'),/* Costume menthe poivrée (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '726', '0','1', '0', '2'),/* Costume chocolat (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '729', '0','1', '0', '2'),/* Hanbok à azalées (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '624', '0','1', '0', '2'),/* Costume d'ours brun (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '626', '0','1', '0', '2')/* Costume de panda (permanent) */
