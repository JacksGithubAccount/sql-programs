CREATE TRIGGER NoDuplicates
ON TestUniqueNulls
AFTER INSERT, UPDATE
AS
BEGIN
IF
(SELECT COUNT(*)
FROM TestUniqueNulls JOIN inserted
ON TestUniqueNulls.NoDupName = inserted.NoDupName) > 1
BEGIN
ROLLBACK TRAN
RAISERROR('Duplicate value.', 11, 1)
END
END