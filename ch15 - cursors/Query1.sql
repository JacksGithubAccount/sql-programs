DECLARE AvgCursor CURSOR
STATIC
FOR
	SELECT VendorName, AVG(InvoiceTotal) AS InvoiceAvg
	FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
	GROUP BY VendorName
OPEN AvgCursor
FETCH NEXT FROM AvgCursor
WHILE @@FETCH_STATUS = 0
	FETCH NEXT FROM AvgCursor
CLOSE AvgCursor
DEALLOCATE AvgCursor

