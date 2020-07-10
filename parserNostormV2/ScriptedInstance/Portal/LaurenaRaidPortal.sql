DECLARE @MapId INT = 122
DECLARE @PositionX INT = 8
DECLARE @PositionY INT = 9
DECLARE @Type INT = 1

INSERT INTO [cmnos].[dbo].[ScriptedInstance]
(
    [MapId], [PositionX],
    [PositionY], [Type], [QuestTimeSpaceId]
)
VALUES
    (@MapId, @PositionX, @PositionY, @Type, '0')