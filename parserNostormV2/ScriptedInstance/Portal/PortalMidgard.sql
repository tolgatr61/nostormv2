DECLARE @DestinationMapId INT = 2612
DECLARE @SourceMapId INT = 260
DECLARE @DestinationX INT = 61
DECLARE @DestinationY INT = 76
DECLARE @SourceX INT = 178
DECLARE @SourceY INT = 37

INSERT INTO [cmnos].[dbo].[Portal]
(
    [DestinationMapId], [DestinationX],
    [DestinationY], [isDisabled], [SourceMapId],
    [SourceX], [SourceY], [Type]
)
VALUES
    (@DestinationMapId, @DestinationX, @DestinationY, '0',  @SourceMapId, @SourceX, @SourceY, '-1')