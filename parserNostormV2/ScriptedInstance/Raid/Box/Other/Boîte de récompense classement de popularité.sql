/* Info :
Rewards Vnum : 5993  Name : Boîte de récompense classement de popularité
*/
DECLARE @BoxId SMALLINT = 5993 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '1002', '0','99', '0', '2'),/* Petite potion de guérison */
    (@BoxDesign, @BoxId, '0', '7', '1005', '0','99', '0', '2'),/* Petite potion de mana */
    (@BoxDesign, @BoxId, '0', '7', '1008', '0','99', '0', '2'),/* Petite potion de récupération */
    (@BoxDesign, @BoxId, '0', '7', '1003', '0','99', '0', '2'),/* Potion de guérison moyenne */
    (@BoxDesign, @BoxId, '0', '7', '1006', '0','99', '0', '2'),/* Potion de mana moyenne */
    (@BoxDesign, @BoxId, '0', '7', '1009', '0','99', '0', '2'),/* Potion de récupération moyenne */
    (@BoxDesign, @BoxId, '0', '7', '1004', '0','99', '0', '2'),/* Grande potion de guérison */
    (@BoxDesign, @BoxId, '0', '7', '1007', '0','99', '0', '2'),/* Grande potion de mana */
    (@BoxDesign, @BoxId, '0', '7', '1010', '0','99', '0', '2'),/* Grande potion de récupération */
    (@BoxDesign, @BoxId, '0', '7', '1120', '0','99', '0', '2'),/* Grande potion spéciale */
    (@BoxDesign, @BoxId, '0', '7', '2375', '0','99', '0', '2'),/* Brochette d'agneau chaude */
    (@BoxDesign, @BoxId, '0', '7', '2513', '0','3', '0', '2'),/* Coeur de dragon */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','3', '0', '2')/* Bénédiction d'Ancelloan */
