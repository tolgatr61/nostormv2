/* Info :
Rewards Vnum : 5683  Name : Somptueuse caisse de provisions du retour
*/
DECLARE @BoxId SMALLINT = 5683 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4210', '0','1', '0', '2'),/* Chapeau de Ratufu aquatique (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4213', '0','1', '0', '2'),/* Costume du Ratufu aquatique (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','99', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','30', '0', '2'),/* Bénédiction d'Ancelloan */
    (@BoxDesign, @BoxId, '0', '7', '1296', '0','10', '0', '2'),/* Renforcement féérique */
    (@BoxDesign, @BoxId, '0', '7', '1365', '0','3', '0', '2'),/* Pierre de résurrection d'âme */
    (@BoxDesign, @BoxId, '0', '7', '1272', '0','1', '0', '2'),/* Sac à dos de l'aventurier (10 jours) */
    (@BoxDesign, @BoxId, '0', '7', '5061', '0','1', '0', '2'),/* Médaille NosMarchand (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '888', '0','1', '0', '2')/* Ratufu aquatique */
