/* Info :
Rewards Vnum : 5448  Name : Coffre à costume animalier (h)
*/
DECLARE @BoxId SMALLINT = 5448 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '673', '0','1', '0', '2'),/* Hanbok d'été (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '676', '0','1', '0', '2'),/* Qipao de kung-fu (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '679', '0','1', '0', '2'),/* Qipao impérial (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '682', '0','1', '0', '2'),/* Qipao du dragon (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '685', '0','1', '0', '2'),/* Kimono du clair de lune (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '688', '0','1', '0', '2'),/* Kimono du soleil levant (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '691', '0','1', '0', '2'),/* Kimono de tatami (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '812', '0','1', '0', '2'),/* Costume de bouledogue (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '818', '0','1', '0', '2'),/* Costume de chat birman (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '820', '0','1', '0', '2'),/* Costume de korat (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '824', '0','1', '0', '2'),/* Costume de lièvre de Mars (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '827', '0','1', '0', '2'),/* Costume de lièvre blanc (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '815', '0','1', '0', '2'),/* Costume de saint-bernard (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '830', '0','1', '0', '2'),/* Costume de lion doré (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '833', '0','1', '0', '2'),/* Costume de lion noir (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '625', '0','1', '0', '2'),/* Costume d'ours polaire (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '627', '0','1', '0', '2')/* Costume d'ours en peluche (permanent) */
