CREATE PROCEDURE spDateRange
	@DateMin varchar(30) = NULL,
	@DateMax varchar(30) = NULL
AS
PRINT @DateMin;
PRINT @DateMax;
IF (@DateMin IS NOT NULL AND @DateMax IS NOT NULL)
    BEGIN
    PRINT @DateMin;
    IF(ISDATE(@DateMin)=1 AND ISDATE(@DateMax)=1)
        PRINT 'Valid Date';
    ELSE
        RAISERROR('Parameters not date format', 10, 1);
    END
ELSE
    RAISERROR ('Invalid parameters', 10, 1);
