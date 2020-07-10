/* Info :
Rewards Vnum : 5889  Name : Coffre à médaille d'or
*/
DECLARE @BoxId SMALLINT = 5889 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5898', '0','1', '0', '2'),/* Médaille d'honneur utile */
    (@BoxDesign, @BoxId, '0', '7', '5897', '0','1', '0', '2'),/* Médaille d'honneur estimable */
    (@BoxDesign, @BoxId, '0', '7', '5896', '0','1', '0', '2'),/* Médaille d'honneur de grande qualité */
    (@BoxDesign, @BoxId, '0', '7', '5895', '0','1', '0', '2'),/* Médaille d'honneur excellente */
    (@BoxDesign, @BoxId, '0', '7', '5894', '0','1', '0', '2'),/* Médaille d'honneur antique */
    (@BoxDesign, @BoxId, '0', '7', '5893', '0','1', '0', '2'),/* Médaille d'honneur mystérieuse */
    (@BoxDesign, @BoxId, '0', '7', '5892', '0','1', '0', '2')/* Médaille d'honneur légendaire */
