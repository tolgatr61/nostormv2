/* Info :
Rewards Vnum : 5261  Name : Boîte de Pâques
*/
DECLARE @BoxId SMALLINT = 5261 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4137', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (h) (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4141', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (f) (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4145', '0','1', '0', '2'),/* Costume de lapin cotonneux (h) (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4149', '0','1', '0', '2'),/* Costume de lapin cotonneux (f) (30 jours) */
    (@BoxDesign, @BoxId, '0', '7', '5108', '0','10', '0', '2'),/* Panneau indicateur de Pâques */
    (@BoxDesign, @BoxId, '0', '7', '4136', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (h) (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4140', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (f) (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4144', '0','1', '0', '2'),/* Costume de lapin cotonneux (h) (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '4148', '0','1', '0', '2'),/* Costume de lapin cotonneux (f) (7 jours) */
    (@BoxDesign, @BoxId, '0', '7', '2405', '0','10', '0', '2'),/* Lapin en chocolat (évènement) */
    (@BoxDesign, @BoxId, '0', '7', '4135', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (h) (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4139', '0','1', '0', '2'),/* Oreilles de lapin cotonneuses (f) (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4143', '0','1', '0', '2'),/* Costume de lapin cotonneux (h) (1 jour) */
    (@BoxDesign, @BoxId, '0', '7', '4147', '0','1', '0', '2')/* Costume de lapin cotonneux (f) (1 jour) */
