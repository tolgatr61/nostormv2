/* Info :
Rewards Vnum : 5410  Name : Coffre de jeeps ultracolorées
*/
DECLARE @BoxId SMALLINT = 5410 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5386', '0','1', '0', '2'),/* Jeep jaune */
    (@BoxDesign, @BoxId, '0', '7', '5387', '0','1', '0', '2'),/* Jeep bleue */
    (@BoxDesign, @BoxId, '0', '7', '5388', '0','1', '0', '2'),/* Jeep rouge */
    (@BoxDesign, @BoxId, '0', '7', '5389', '0','1', '0', '2'),/* Jeep turquoise */
    (@BoxDesign, @BoxId, '0', '7', '5390', '0','1', '0', '2'),/* Jeep noire */
    (@BoxDesign, @BoxId, '0', '7', '5391', '0','1', '0', '2')/* Jeep rose */
