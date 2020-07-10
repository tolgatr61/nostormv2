DECLARE @MapId INT = 236
DECLARE @PositionX INT = 130
DECLARE @PositionY INT = 117
DECLARE @Type INT = 1

INSERT INTO [cmnos].[dbo].[ScriptedInstance]
(
    [MapId], [PositionX],
    [PositionY], [Type], [QuestTimeSpaceId]
)
VALUES
    (@MapId, @PositionX, @PositionY, @Type, '0')