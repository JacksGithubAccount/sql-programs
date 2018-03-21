SELECT DISTINCT VendorName
FROM Vendors
WHERE VendorID IN 
	(SELECT VendorID 
	 FROM Invoices)
ORDER BY VendorName