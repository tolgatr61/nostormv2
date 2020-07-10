/* Info :
Rewards Vnum : 5303  Name : Coffre du hasard avec costume de renardoto
*/
DECLARE @BoxId SMALLINT = 5303 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5302', '0','1', '0', '2'),/* Ensemble de Renard-Oto */
    (@BoxDesign, @BoxId, '0', '7', '1279', '0','1', '0', '2'),/* 1x panier pour familier (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '2160', '0','40', '0', '2'),/* 40x ailes de l'amitié */
    (@BoxDesign, @BoxId, '0', '7', '1119', '0','1', '0', '2'),/* 1x potion spéciale moyenne */
    (@BoxDesign, @BoxId, '0', '7', '284', '0','1', '0', '2'),/* 1x amulette de renforcement */
    (@BoxDesign, @BoxId, '0', '7', '1285', '0','16', '0', '2'),/* 16x bénédiction de l'ange gardien */
    (@BoxDesign, @BoxId, '0', '7', '1904', '0','1', '0', '2'),/* 1x jeu de tarot */
    (@BoxDesign, @BoxId, '0', '7', '1296', '0','10', '0', '2'),/* 10x renforcement féérique */
    (@BoxDesign, @BoxId, '0', '7', '1945', '0','14', '0', '2') /* 14x récipient scellé */
