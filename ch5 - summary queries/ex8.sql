SELECT VendorName, COUNT(DISTINCT InvoiceLineItems.AccountNo) AS '# of Accounts'
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
	JOIN InvoiceLineItems ON InvoiceLineItems.InvoiceID = Invoices.InvoiceID
GROUP BY VendorName
HAVING COUNT(DISTINCT InvoiceLineItems.AccountNo) > 1