/* Info :
Rewards Vnum : 302  Name : Mère Cuby
*/
DECLARE @BoxId SMALLINT = 302 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '315', '0','1', '0', '2'),/* Gants des flammes */
    (@BoxDesign, @BoxId, '0', '7', '321', '0','1', '0', '2'),/* Chaussures de l'illumination */
    (@BoxDesign, @BoxId, '0', '7', '262', '0','1', '0', '2'),/* Épée d'Elvin */
    (@BoxDesign, @BoxId, '0', '7', '265', '0','1', '0', '2'),/* Arc rouge */
    (@BoxDesign, @BoxId, '0', '7', '268', '0','1', '0', '2'),/* Baguette magique légendaire */
    (@BoxDesign, @BoxId, '0', '7', '26', '0','1', '0', '2'),/* Sabre en or */
    (@BoxDesign, @BoxId, '0', '7', '40', '0','1', '0', '2'),/* Arc en cuir */
    (@BoxDesign, @BoxId, '0', '7', '54', '0','1', '0', '2'),/* Baguette magique créatrice de mana */
    (@BoxDesign, @BoxId, '0', '7', '9357', '0','1', '0', '2')/* Gourmand */
