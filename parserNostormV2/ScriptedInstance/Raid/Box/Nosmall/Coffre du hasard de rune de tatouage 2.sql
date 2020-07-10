/* Info :
Rewards Vnum : 5908  Name : Coffre du hasard de rune de tatouage 2
*/
DECLARE @BoxId SMALLINT = 5908 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5815', '0','3', '0', '2'),/* Parchemin de préservation de tatouage */
    (@BoxDesign, @BoxId, '0', '7', '5799', '0','3', '0', '2'),/* Détatoueur */
    (@BoxDesign, @BoxId, '0', '7', '5812', '0','3', '0', '2'),/* Marteau d'effacement runique */
    (@BoxDesign, @BoxId, '0', '7', '5823', '0','6', '0', '2'),/* Parchemin de chance runique */
    (@BoxDesign, @BoxId, '0', '7', '5811', '0','12', '0', '2')/* Enclume runique de réparation */
