DECLARE @DestinationMapId INT = 260
DECLARE @SourceMapId INT = 2612
DECLARE @DestinationX INT = 178
DECLARE @DestinationY INT = 37
DECLARE @SourceX INT = 61
DECLARE @SourceY INT = 76

INSERT INTO [dbo].[Portal]
(
    [DestinationMapId], [DestinationX],
    [DestinationY], [isDisabled], [SourceMapId],
    [SourceX], [SourceY], [Type]
)
VALUES
    (@DestinationMapId, @DestinationX, @DestinationY, '0',  @SourceMapId, @SourceX, @SourceY, '-1')