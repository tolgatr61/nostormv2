DECLARE @MapId INT = 2612
DECLARE @PositionX INT = 109
DECLARE @PositionY INT = 77
DECLARE @Type INT = 1

INSERT INTO [cmnos].[dbo].[ScriptedInstance]
(
    [MapId], [PositionX],
    [PositionY], [Type], [QuestTimeSpaceId]
)
VALUES
    (@MapId, @PositionX, @PositionY, @Type, '0')