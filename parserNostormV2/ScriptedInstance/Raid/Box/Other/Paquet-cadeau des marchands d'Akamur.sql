/* Info :
Rewards Vnum : 5909  Name : Paquet-cadeau des marchands d'Akamur
*/
DECLARE @BoxId SMALLINT = 5909 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '5916', '0','1', '0', '2'),/* Grande huile de fleur de glace */
    (@BoxDesign, @BoxId, '0', '7', '2379', '0','1', '0', '2'),/* Viande d'agneau */
    (@BoxDesign, @BoxId, '0', '7', '5910', '0','1', '0', '2'),/* Bon d'Akamur */
    (@BoxDesign, @BoxId, '0', '7', '2503', '0','1', '0', '2'),/* Élément de terre */
    (@BoxDesign, @BoxId, '0', '7', '2381', '0','1', '0', '2'),/* Coffre d'énormes fraises */
    (@BoxDesign, @BoxId, '0', '7', '2382', '0','1', '0', '2'),/* Coffre de raisins mûrs */
    (@BoxDesign, @BoxId, '0', '7', '2380', '0','1', '0', '2'),/* Eau souterraine */
    (@BoxDesign, @BoxId, '0', '7', '2348', '0','1', '0', '2'),/* Pierre précieuse brillante violette */
    (@BoxDesign, @BoxId, '0', '7', '2349', '0','1', '0', '2')/* Pierre précieuse brillante bleu ciel */
