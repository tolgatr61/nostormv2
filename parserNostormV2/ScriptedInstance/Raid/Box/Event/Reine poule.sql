/* Info :
Rewards Vnum : 302  Name : Reine poule
*/
DECLARE @BoxId SMALLINT = 302 
DECLARE @BoxDesign SMALLINT = 11
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5259', '0','1', '0', '2'),/* Plume de la reine poule (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '2404', '0','1', '0', '2'),/* Fruit d'évolution (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '5262', '0','1', '0', '2'),/* Fruit de croissance (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '5107', '0','1', '0', '2'),/* Parchemin d'amélioration du costume de poule (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '5108', '0','2', '0', '2'),/* Panneau indicateur de Pâques */
    (@BoxDesign, @BoxId, '0', '7', '4151', '0','1', '0', '2'),/* Oeuf mystérieux */
    (@BoxDesign, @BoxId, '0', '7', '9367', '0','1', '0', '2')/* Maître BBQ */
