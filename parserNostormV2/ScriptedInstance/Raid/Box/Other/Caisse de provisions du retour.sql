/* Info :
Rewards Vnum : 5682  Name : Caisse de provisions du retour
*/
DECLARE @BoxId SMALLINT = 5682 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','50', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','20', '0', '2'),/* Bénédiction d'Ancelloan */
    (@BoxDesign, @BoxId, '0', '7', '1296', '0','5', '0', '2'),/* Renforcement féérique */
    (@BoxDesign, @BoxId, '0', '7', '1365', '0','1', '0', '2')/* Pierre de résurrection d'âme */
