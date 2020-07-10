DECLARE @NpcId INT = 21009
DECLARE @NpcDialog SMALLINT = 9770
DECLARE @NpcEffect SMALLINT = 0
DECLARE @NpcIsDisabled SMALLINT = 0
DECLARE @NpcIsMoving SMALLINT = 0
DECLARE @NpcIsSitting SMALLINT = 0

DECLARE @NpcMapId SMALLINT = 1
DECLARE @NpcMapX SMALLINT = 122
DECLARE @NpcMapY SMALLINT = 80
DECLARE @NpcPosition tinyint = 0

DECLARE @NpcVnum SMALLINT = 2640

DECLARE @ShopName nvarchar (255) = '[ Objets spéciaux ]'
DECLARE @ShopMenuType tinyint = 0
DECLARE @ShopType SMALLINT = 73

/*
** THE NPC
*/
INSERT INTO [cmnos].[dbo].[MapNpc] (
	[MapNpcId], [Dialog], [Effect], [EffectDelay], [IsDisabled], [IsMoving], [IsSitting],
	[MapId], [MapX], [MapY], [NpcVNum], [Position]
)
VALUES
	(
		@NpcId,	@NpcDialog, @NpcEffect, '4750', @NpcIsDisabled, @NpcIsMoving,	@NpcIsSitting,
		@NpcMapId,	@NpcMapX,	@NpcMapY,	@NpcVnum,	@NpcPosition
	)

/*
**	THE SHOP
*/
	INSERT INTO [cmnos].[dbo].[Shop] (
		[MapNpcId],
		[MenuType], [Name], [ShopType]
)
VALUES
	(
		@NpcId,
		@ShopMenuType, @ShopName, @ShopType
	);