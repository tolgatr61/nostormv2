DECLARE @DestinationMapId INT = 2644
DECLARE @SourceMapId INT = 2628
DECLARE @DestinationX INT = 5
DECLARE @DestinationY INT = 56
DECLARE @SourceX INT = 63
DECLARE @SourceY INT = 88

INSERT INTO [cmnos].[dbo].[Portal]
(
    [DestinationMapId], [DestinationX],
    [DestinationY], [isDisabled], [SourceMapId],
    [SourceX], [SourceY], [Type]
)
VALUES
    (@DestinationMapId, @DestinationX, @DestinationY, '0',  @SourceMapId, @SourceX, @SourceY, '-1')