DECLARE @counter INT
SET @counter = 1

WHILE @counter <= 10
BEGIN
    PRINT '55: ' + CAST(@counter AS VARCHAR(10))
    SET @counter = @counter + 1
END




