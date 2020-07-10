DECLARE @DestinationMapId INT = 2628
DECLARE @SourceMapId INT = 2644
DECLARE @DestinationX INT = 63
DECLARE @DestinationY INT = 88
DECLARE @SourceX INT = 5
DECLARE @SourceY INT = 56

INSERT INTO [cmnos].[dbo].[Portal]
(
    [DestinationMapId], [DestinationX],
    [DestinationY], [isDisabled], [SourceMapId],
    [SourceX], [SourceY], [Type]
)
VALUES
    (@DestinationMapId, @DestinationX, @DestinationY, '0',  @SourceMapId, @SourceX, @SourceY, '-1')