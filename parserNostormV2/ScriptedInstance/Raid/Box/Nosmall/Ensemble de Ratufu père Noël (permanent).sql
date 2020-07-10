/* Info :
Rewards Vnum : 5080  Name : Ensemble de Ratufu père Noël (permanent)
*/
DECLARE @BoxId SMALLINT = 5080 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4074', '0','1', '0', '2'),/* Bonnet de Ratufu père Noël (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4073', '0','1', '0', '2')/* Costume de Ratufu père Noël (permanent) */
