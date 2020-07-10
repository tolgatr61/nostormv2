/* Info :
Rewards Vnum : 5992  Name : Cadeau de tortue
*/
DECLARE @BoxId SMALLINT = 5992 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '930', '0','1', '0', '2'),/* Lapin mignon */
    (@BoxDesign, @BoxId, '0', '7', '2426', '0','50', '0', '2'),/* Carotte */
    (@BoxDesign, @BoxId, '0', '7', '2425', '0','30', '0', '2'),/* Feuille de ginseng */
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','10', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '1010', '0','20', '0', '2'),/* Grande potion de récupération */
    (@BoxDesign, @BoxId, '0', '7', '1004', '0','20', '0', '2'),/* Grande potion de guérison */
    (@BoxDesign, @BoxId, '0', '7', '1007', '0','20', '0', '2')/* Grande potion de mana */
