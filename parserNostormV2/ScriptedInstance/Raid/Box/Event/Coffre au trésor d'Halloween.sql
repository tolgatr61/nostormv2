/* Info :
Rewards Vnum : 5968  Name : Coffre au trésor d'Halloween
*/
DECLARE @BoxId SMALLINT = 5968 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4173', '0','1', '0', '2'),/* Carte de tarot lugubre [Esprit] */
    (@BoxDesign, @BoxId, '0', '7', '4174', '0','1', '0', '2'),/* Carte de tarot lugubre [Dracula] */
    (@BoxDesign, @BoxId, '0', '7', '4175', '0','1', '0', '2'),/* Carte de tarot lugubre [Épouvantail] */
    (@BoxDesign, @BoxId, '0', '7', '4169', '0','1', '0', '2'),/* Chapeau citrouille incandescent (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '1918', '0','1', '0', '2')/* Panneau indicateur d'Halloween */
