/* Info :
Rewards Vnum : 5572  Name : Ensemble d'illusionniste (permanent)
*/
DECLARE @BoxId SMALLINT = 5572 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4260', '0','1', '0', '2'),/* Haut-de-forme d'illusionniste (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4258', '0','1', '0', '2')/* Costume d'illusionniste (permanent) */
