DECLARE @CustTotalPurch int, @CustLastName varchar(20), @CustFirstName varchar(20), @CustID int
DECLARE CustID3_Cursor CURSOR
STATIC
FOR
	SELECT SUM(PurchPrice), Purchases.CustID
	FROM Purchases JOIN Customer ON Purchases.CustID = Customer.CustID
	WHERE Purchases.CustID =3
	GROUP BY Purchases.CustID	
OPEN CustID3_Cursor
FETCH NEXT FROM CustID3_Cursor INTO @CustTotalPurch, @CustID
WHILE @@FETCH_STATUS = 0
	BEGIN
	DECLARE @LineNum int
	SET @LineNum = 1
	SET @LineNum = @LineNum +1
	
	INSERT INTO PurchaseTotal
	(PurchasesCustID, PurchasesTotal)
	SELECT @CustID, @CustTotalPurch
	
	FETCH NEXT FROM CustID3_Cursor INTO @CustTotalPurch, @CustID
	END
CLOSE CustID3_Cursor
DEALLOCATE CustID3_Cursor