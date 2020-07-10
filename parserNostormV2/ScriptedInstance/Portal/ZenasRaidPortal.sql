DECLARE @MapId INT = 232
DECLARE @PositionX INT = 104
DECLARE @PositionY INT = 126
DECLARE @Type INT = 1

INSERT INTO [cmnos].[dbo].[ScriptedInstance]
(
    [MapId], [PositionX],
    [PositionY], [Type], [QuestTimeSpaceId]
)
VALUES
    (@MapId, @PositionX, @PositionY, @Type, '0')