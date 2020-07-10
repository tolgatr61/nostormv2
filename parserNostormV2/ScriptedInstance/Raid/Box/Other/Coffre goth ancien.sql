/* Info :
Rewards Vnum : 5852  Name : Coffre goth ancien
*/
DECLARE @BoxId SMALLINT = 5852 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4988', '0','1', '0', '2'),/* Chapeau à plume de Jennifer */
    (@BoxDesign, @BoxId, '0', '7', '4315', '0','1', '0', '2'),/* Clé de Jennifer */
    (@BoxDesign, @BoxId, '0', '7', '4301', '0','1', '0', '2'),/* Casque viking (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '4303', '0','1', '0', '2'),/* Armure viking (permanent) */
    (@BoxDesign, @BoxId, '0', '7', '1246', '0','2', '0', '2'),/* Potion d'attaque */
    (@BoxDesign, @BoxId, '0', '7', '1246', '0','5', '0', '2'),/* Potion d'attaque */
    (@BoxDesign, @BoxId, '0', '7', '1246', '0','10', '0', '2'),/* Potion d'attaque */
    (@BoxDesign, @BoxId, '0', '7', '1247', '0','2', '0', '2'),/* Potion de défense */
    (@BoxDesign, @BoxId, '0', '7', '1247', '0','5', '0', '2'),/* Potion de défense */
    (@BoxDesign, @BoxId, '0', '7', '1247', '0','10', '0', '2'),/* Potion de défense */
    (@BoxDesign, @BoxId, '0', '7', '1248', '0','2', '0', '2'),/* Potion d'énergie */
    (@BoxDesign, @BoxId, '0', '7', '1248', '0','5', '0', '2'),/* Potion d'énergie */
    (@BoxDesign, @BoxId, '0', '7', '1248', '0','10', '0', '2'),/* Potion d'énergie */
    (@BoxDesign, @BoxId, '0', '7', '1249', '0','2', '0', '2'),/* Potion d'augmentation de l'expérience */
    (@BoxDesign, @BoxId, '0', '7', '1249', '0','5', '0', '2'),/* Potion d'augmentation de l'expérience */
    (@BoxDesign, @BoxId, '0', '7', '1249', '0','10', '0', '2'),/* Potion d'augmentation de l'expérience */
    (@BoxDesign, @BoxId, '0', '7', '1011', '0','55', '0', '2'),/* Potion de récupération géante */
    (@BoxDesign, @BoxId, '0', '7', '1025', '0','1', '0', '2'),/* Cellon (niveau 9) */
    (@BoxDesign, @BoxId, '0', '7', '1286', '0','1', '0', '2')/* Bénédiction d'Ancelloan */
