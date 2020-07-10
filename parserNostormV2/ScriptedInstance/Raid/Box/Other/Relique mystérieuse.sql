/* Info :
Rewards Vnum : 1879  Name : Relique mystérieuse
*/
DECLARE @BoxId SMALLINT = 1879 
DECLARE @BoxDesign SMALLINT = 0
INSERT INTO [dbo].[RollGeneratedItem]
(
    [OriginalItemDesign], [OriginalItemVNum],
    [MinimumOriginalItemRare], [MaximumOriginalItemRare], [ItemGeneratedVNum],
    [ItemGeneratedDesign], [ItemGeneratedAmount], [IsRareRandom],
    [Probability]
)
VALUES
    (@BoxDesign, @BoxId, '0', '7', '4727', '0','1', '0', '2'),/* Gant de Sicario */
    (@BoxDesign, @BoxId, '0', '7', '4728', '0','1', '0', '2'),/* Poing noir */
    (@BoxDesign, @BoxId, '0', '7', '4745', '0','1', '0', '2'),/* Armure de Sicario */
    (@BoxDesign, @BoxId, '0', '7', '4746', '0','1', '0', '2'),/* Armure du poing noir */
    (@BoxDesign, @BoxId, '0', '7', '4763', '0','1', '0', '2'),/* Insigne d'argent avec trois chevaux */
    (@BoxDesign, @BoxId, '0', '7', '4001', '0','1', '0', '2'),/* Épée tranchante du grand chef */
    (@BoxDesign, @BoxId, '0', '7', '4003', '0','1', '0', '2'),/* Arc du grand chef */
    (@BoxDesign, @BoxId, '0', '7', '4005', '0','1', '0', '2'),/* Baguette magique du grand chef */
    (@BoxDesign, @BoxId, '0', '7', '4007', '0','1', '0', '2'),/* Arbalète du grand chef */
    (@BoxDesign, @BoxId, '0', '7', '4009', '0','1', '0', '2'),/* Couteau du grand chef */
    (@BoxDesign, @BoxId, '0', '7', '4011', '0','1', '0', '2'),/* Arme enchantée du grand chef */
    (@BoxDesign, @BoxId, '0', '7', '4013', '0','1', '0', '2'),/* Armure lourde du commandant */
    (@BoxDesign, @BoxId, '0', '7', '4016', '0','1', '0', '2'),/* Armure en cuir du commandant */
    (@BoxDesign, @BoxId, '0', '7', '4019', '0','1', '0', '2'),/* Apparat du commandant */
    (@BoxDesign, @BoxId, '0', '7', '4056', '0','1', '0', '2'),/* Talisman de la foudre */
    (@BoxDesign, @BoxId, '0', '7', '4057', '0','1', '0', '2'),/* Talisman des vagues */
    (@BoxDesign, @BoxId, '0', '7', '4058', '0','1', '0', '2'),/* Talisman des nuages */
    (@BoxDesign, @BoxId, '0', '7', '4059', '0','1', '0', '2'),/* Talisman du vent */
    (@BoxDesign, @BoxId, '0', '7', '4060', '0','1', '0', '2'),/* Talisman du Feu */
    (@BoxDesign, @BoxId, '0', '7', '4022', '0','1', '0', '2'),/* Turban du commandant */
    (@BoxDesign, @BoxId, '0', '7', '4023', '0','1', '0', '2'),/* Turban du grand chef */
    (@BoxDesign, @BoxId, '0', '7', '2347', '0','1', '0', '2'),/* Morceau de relique brisé */
    (@BoxDesign, @BoxId, '0', '7', '4038', '0','1', '0', '2'),/* Gants maritimes */
    (@BoxDesign, @BoxId, '0', '7', '4043', '0','1', '0', '2'),/* Bottes maritimes */
    (@BoxDesign, @BoxId, '0', '7', '4039', '0','1', '0', '2'),/* Gants en cuir rocheux noirs */
    (@BoxDesign, @BoxId, '0', '7', '4044', '0','1', '0', '2'),/* Bottes en cuir rocheux noirs */
    (@BoxDesign, @BoxId, '0', '7', '2348', '0','1', '0', '2'),/* Pierre précieuse brillante violette */
    (@BoxDesign, @BoxId, '0', '7', '2349', '0','1', '0', '2')/* Pierre précieuse brillante bleu ciel */
